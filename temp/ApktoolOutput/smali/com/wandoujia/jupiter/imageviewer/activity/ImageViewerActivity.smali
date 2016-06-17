.class public Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "ImageViewerActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->IMAGE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lg;->a(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    :try_start_0
    const-string v3, "utf-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0

    .line 99
    :cond_0
    const-string v0, "wdj://explore/image/viewer?images=%1$s&pos=%2$d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    const-string v1, "image_paths"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 114
    const-string v1, "default_position"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string v1, "save_directory"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v0, "images"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->b:Ljava/util/ArrayList;

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    :try_start_0
    iget-object v7, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->b:Ljava/util/ArrayList;

    const-string v8, "utf-8"

    invoke-static {v6, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "pos"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->c:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "image_paths"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    :cond_2
    :goto_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    const-string v1, "image_paths"

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 126
    const-string v1, "default_position"

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v1, "save_directory"

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v1, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;

    invoke-direct {v1}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;-><init>()V

    .line 129
    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 133
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    const-string v1, "wdj://gallery"

    invoke-virtual {v0, p0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/content/Context;)V

    .line 136
    return-void

    .line 122
    :cond_3
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->c:I

    if-gtz v0, :cond_4

    const-string v0, "default_position"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->c:I

    :cond_4
    const-string v0, "save_directory"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->d:Ljava/lang/String;

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v6

    goto/16 :goto_1
.end method
