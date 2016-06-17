.class final Lcoa;
.super Ljava/lang/Object;
.source "AvatarUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcoe;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Lcoe;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcoa;->c:Ljava/lang/String;

    iput-object p2, p0, Lcoa;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcoa;->b:Lcoe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 178
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 179
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 180
    const-string v0, "Cookie"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wdj_auth="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const/4 v3, 0x0

    .line 183
    iget-object v0, p0, Lcoa;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 184
    const-string v0, "platform"

    iget-object v4, p0, Lcoa;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_0
    :goto_0
    :try_start_0
    const-string v0, "https://account.wandoujia.com/v4/api/avatar"

    const-string v4, "image/jpeg"

    const-string v5, "file"

    const/16 v6, 0x7530

    invoke-static/range {v0 .. v6}, Ld;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_3

    .line 207
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 209
    const-string v0, "error"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 210
    if-nez v0, :cond_6

    .line 211
    const-string v0, "member"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_1

    .line 213
    const-string v1, "avatar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchv;->e(Ljava/lang/String;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcoa;->b:Lcoe;

    if-eqz v0, :cond_2

    .line 216
    invoke-static {}, Lcnz;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcob;

    invoke-direct {v1, p0}, Lcob;-><init>(Lcoa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    :cond_2
    if-eqz v3, :cond_3

    .line 224
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 250
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 252
    :cond_4
    return-void

    .line 187
    :cond_5
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/wandoujia/base/storage/StorageManager;->getInstance()Lcom/wandoujia/base/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/base/storage/StorageManager;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "croped_avatar.jpg"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :try_start_1
    iget-object v0, p0, Lcoa;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 192
    iget-object v4, p0, Lcoa;->a:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 193
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 194
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0

    .line 227
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcoa;->b:Lcoe;

    if-eqz v0, :cond_3

    .line 229
    invoke-static {}, Lcnz;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcoc;

    invoke-direct {v1, p0}, Lcoc;-><init>(Lcoa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 239
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcoa;->b:Lcoe;

    if-eqz v0, :cond_3

    .line 241
    invoke-static {}, Lcnz;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcod;

    invoke-direct {v1, p0}, Lcod;-><init>(Lcoa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method
