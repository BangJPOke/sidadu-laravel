
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Edit Operator Desa</title>
</head>
<body>

<h1>Edit Operator Desa</h1>

<p>Admin Kecamatan: {{ $user->nama_lengkap }}</p>

<a href="{{ route('admin-kecamatan.operator.index') }}">
    Kembali ke Daftar Operator
</a>

<hr>

@if (session('error'))
    <p style="color:red;">{{ session('error') }}</p>
@endif

@if ($errors->any())
    <div style="color:red;">
        @foreach ($errors->all() as $error)
            <p>{{ $error }}</p>
        @endforeach
    </div>
@endif

<form action="{{ route('admin-kecamatan.operator.update', $operator->id) }}"
      method="POST">

    @csrf
    @method('PUT')

    <p>
        <label>Nama Lengkap Operator</label><br>
        <input type="text" name="nama_lengkap"
               value="{{ old('nama_lengkap', $operator->nama_lengkap) }}"
               required>
    </p>

    <p>
        <label>Username</label><br>
        <input type="text" name="username"
               value="{{ old('username', $operator->username) }}"
               required>
    </p>

    <p>
        <label>Password Baru</label><br>
        <input type="password" name="password">
        <br>
        <small>Kosongkan jika tidak ingin mengubah password.</small>
    </p>

    <p>
        <label>Desa</label><br>
        <select name="desa_id" required>
            @foreach ($desa as $item)
                <option value="{{ $item->id }}"
                    {{ old('desa_id', $operator->desa_id) == $item->id ? 'selected' : '' }}>
                    {{ $item->nama_desa }}
                </option>
            @endforeach
        </select>
    </p>

    <button type="submit">Simpan Perubahan</button>

</form>

</body>
</html>
