.class public final Lclg;
.super Landroid/os/AsyncTask;
.source "AccountModifyProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 476
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 477
    iput-object p1, p0, Lclg;->a:Ljava/lang/String;

    .line 478
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lclg;->b:Ljava/lang/ref/WeakReference;

    .line 479
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lclg;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->f:Lcmm;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->f:Lcmm;

    iget-object v0, p0, Lclg;->a:Ljava/lang/String;

    invoke-static {v0}, Lcii;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 472
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lclg;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->h(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
