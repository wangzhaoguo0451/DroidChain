.class public final Lgdk;
.super Ljava/lang/Object;
.source "ShareUtil.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lham;->f:Lham;

    invoke-virtual {v1}, Lham;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.cache/share/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgdk;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;Lfyz;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/ripple_framework/util/AppUtils;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    const v0, 0x7f0e055b

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v1, p2, Lfyz;->c:Ljava/lang/String;

    .line 54
    new-instance v2, Ljava/io/File;

    sget-object v0, Lgdk;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgdk;->b(Landroid/content/Context;Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;Lfyz;Landroid/net/Uri;)V

    goto :goto_0

    .line 59
    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v3, Lgdk;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :cond_3
    sget-object v0, Lham;->f:Lham;

    const-string v3, "image"

    invoke-virtual {v0, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldaa;

    new-instance v3, Lgdl;

    invoke-direct {v3, v2, p0, p1, p2}, Lgdl;-><init>(Ljava/io/File;Landroid/content/Context;Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;Lfyz;)V

    invoke-virtual {v0, v1, v3, v4, v4}, Ldaa;->a(Ljava/lang/String;Ldbd;II)Ldaq;

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;Lfyz;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3}, Lgdk;->b(Landroid/content/Context;Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;Lfyz;Landroid/net/Uri;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-static {p2}, Lgdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Lhrp;

    new-instance v2, Lhrs;

    invoke-direct {v2, p0, p1, v0}, Lhrs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lhrp;-><init>(Landroid/content/Context;Lhrs;)V

    .line 151
    const-string v2, "http://wandou.im/yourls-api.php"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "5c674d896c"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wandoujia/base/utils/MD5Utils;->md5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "timestamp"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "signature"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "action"

    const-string v4, "shorturl"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "url"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "format"

    const-string v3, "json"

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lhru;

    const-class v3, Lhrt;

    new-instance v4, Lhrq;

    invoke-direct {v4, v1}, Lhrq;-><init>(Lhrp;)V

    new-instance v5, Lhrr;

    invoke-direct {v5, v1}, Lhrr;-><init>(Lhrp;)V

    invoke-direct {v2, v0, v3, v4, v5}, Lhru;-><init>(Ljava/lang/String;Ljava/lang/Class;Lagu;Lagt;)V

    sget-object v0, Lj;->j:Lagr;

    if-eqz v0, :cond_0

    sget-object v0, Lj;->j:Lagr;

    invoke-virtual {v0, v2}, Lagr;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RequestQueue not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;Lfyz;Landroid/net/Uri;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0e055b

    const v11, 0x21020001

    const/4 v10, 0x1

    const/16 v9, 0xa0

    const/4 v8, 0x0

    .line 93
    sget-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->WECHAT:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    if-ne v0, p1, :cond_3

    .line 94
    iget-object v0, p2, Lfyz;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://www.wandoujia.com"

    .line 95
    :goto_0
    iget-object v1, p2, Lfyz;->b:Ljava/lang/String;

    iget-object v2, p2, Lfyz;->a:Ljava/lang/String;

    invoke-static {}, Lfbu;->a()Lfbu;

    invoke-static {}, Lfbu;->b()Lcbo;

    move-result-object v3

    invoke-virtual {v3}, Lcbo;->a()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    :goto_1
    return-void

    .line 94
    :cond_0
    iget-object v0, p2, Lfyz;->d:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_1
    new-instance v3, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    iput-object v0, v3, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    new-instance v0, Lcbs;

    invoke-direct {v0}, Lcbs;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wandoujia"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcbs;->a:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Landroid/graphics/Bitmap$Config;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    aput-object v6, v5, v8

    invoke-static {v4, v9, v9, v5}, Lcom/wandoujia/base/utils/ImageUtil;->decodeBitmap(Ljava/lang/String;II[Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v2, v4, v3}, Lfbu;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcbw;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v1

    iput-object v1, v0, Lcbs;->b:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-static {}, Lfbu;->b()Lcbo;

    move-result-object v1

    invoke-virtual {v1}, Lcbo;->b()I

    move-result v1

    if-lt v1, v11, :cond_2

    iput v8, v0, Lcbs;->c:I

    :cond_2
    invoke-static {}, Lfbu;->b()Lcbo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcbo;->a(Lcbl;)Z

    goto :goto_1

    .line 96
    :cond_3
    sget-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->WECHAT_TIMELINE:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    if-ne v0, p1, :cond_8

    .line 97
    iget-object v0, p2, Lfyz;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "http://www.wandoujia.com"

    .line 98
    :goto_2
    iget-object v1, p2, Lfyz;->b:Ljava/lang/String;

    iget-object v2, p2, Lfyz;->a:Ljava/lang/String;

    invoke-static {}, Lfbu;->a()Lfbu;

    invoke-static {}, Lfbu;->b()Lcbo;

    move-result-object v3

    invoke-virtual {v3}, Lcbo;->a()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 97
    :cond_4
    iget-object v0, p2, Lfyz;->d:Ljava/lang/String;

    goto :goto_2

    .line 98
    :cond_5
    invoke-static {}, Lfbu;->b()Lcbo;

    move-result-object v3

    invoke-virtual {v3}, Lcbo;->b()I

    move-result v3

    if-ge v3, v11, :cond_6

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0695

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_6
    new-instance v3, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    iput-object v0, v3, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    new-instance v0, Lcbs;

    invoke-direct {v0}, Lcbs;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wandoujia"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcbs;->a:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Landroid/graphics/Bitmap$Config;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    aput-object v6, v5, v8

    invoke-static {v4, v9, v9, v5}, Lcom/wandoujia/base/utils/ImageUtil;->decodeBitmap(Ljava/lang/String;II[Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v2, v4, v3}, Lfbu;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcbw;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v1

    iput-object v1, v0, Lcbs;->b:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-static {}, Lfbu;->b()Lcbo;

    move-result-object v1

    invoke-virtual {v1}, Lcbo;->b()I

    move-result v1

    if-lt v1, v11, :cond_7

    iput v10, v0, Lcbs;->c:I

    :cond_7
    invoke-static {}, Lfbu;->b()Lcbo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcbo;->a(Lcbl;)Z

    goto/16 :goto_1

    .line 100
    :cond_8
    iget-object v0, p2, Lfyz;->a:Ljava/lang/String;

    .line 101
    iget-object v1, p2, Lfyz;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lfyz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
