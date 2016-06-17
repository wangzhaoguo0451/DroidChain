.class public final Lfxz;
.super Ljava/lang/Object;
.source "ImageChooserActivity.java"

# interfaces
.implements Lhw;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lfxz;->a:Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lfxz;->a:Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->a(Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;)Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;->c(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 94
    instance-of v1, v0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;

    if-eqz v1, :cond_0

    .line 95
    check-cast v0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->c()V

    .line 97
    :cond_0
    return-void
.end method

.method public final a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 103
    return-void
.end method
