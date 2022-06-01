def profile_update(request):
    user = request.user
    if request.method == 'POST':
        form = UpdateProfile(
            request.POST, request.FILES or None, instance=request.user,)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            obj = form.save(commit=False)
            print(request.POST.get('img'))
            if request.POST.get('img'):
                image = Image.open(request.FILES['img'].file)
                deleteImage(obj.user_face_img_md5)
                obj.user_face_img_md5 = uploadImage(image)
            else:
                print("No image uploaded")
            obj.save()
            messages.success(
                request, f'Account has been updated!')
            return redirect('profile')
    else:
        data = {
            'username': user.username,
            'email': user.email,
            'real_name': user.real_name,
            'role': user.role,
        }
        form = UpdateProfile(initial=data)

    return render(request, 'users/profile_update.html', {'form': form, 'img_str': user.user_face_img_md5})