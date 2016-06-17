.class public final Lfxy;
.super Landroid/os/Handler;
.source "ImageChooserActivity.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lfxy;->a:Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lfxy;->a:Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->a(Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;)Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;

    move-result-object v0

    iget-object v1, p0, Lfxy;->a:Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->a(Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;)Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;->c(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 64
    instance-of v1, v0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;

    if-eqz v1, :cond_0

    .line 65
    check-cast v0, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->c()V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
