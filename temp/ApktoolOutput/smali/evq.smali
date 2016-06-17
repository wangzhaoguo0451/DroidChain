.class public final Levq;
.super Ljava/lang/Object;
.source "AppCommentCaptchaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Levq;->b:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;

    iput-object p2, p0, Levq;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Levq;->b:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->b(Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Levq;->b:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->b(Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Levq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    :cond_0
    return-void
.end method
