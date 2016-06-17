.class public final Lbur;
.super Ljava/lang/Object;
.source "WeiboMultiMessage.java"


# instance fields
.field public a:Lcom/sina/weibo/sdk/api/TextObject;

.field public b:Lcom/sina/weibo/sdk/api/ImageObject;

.field public c:Lcom/sina/weibo/sdk/api/BaseMediaObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lbur;
    .locals 2
    .parameter

    .prologue
    .line 68
    const-string v0, "_weibo_message_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/api/TextObject;

    iput-object v0, p0, Lbur;->a:Lcom/sina/weibo/sdk/api/TextObject;

    .line 69
    iget-object v0, p0, Lbur;->a:Lcom/sina/weibo/sdk/api/TextObject;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lbur;->a:Lcom/sina/weibo/sdk/api/TextObject;

    const-string v1, "_weibo_message_text_extra"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/TextObject;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 72
    :cond_0
    const-string v0, "_weibo_message_image"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/api/ImageObject;

    iput-object v0, p0, Lbur;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 73
    iget-object v0, p0, Lbur;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lbur;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    const-string v1, "_weibo_message_image_extra"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/ImageObject;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 76
    :cond_1
    const-string v0, "_weibo_message_media"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/api/BaseMediaObject;

    iput-object v0, p0, Lbur;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 77
    iget-object v0, p0, Lbur;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lbur;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    const-string v1, "_weibo_message_media_extra"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 80
    :cond_2
    return-object p0
.end method
