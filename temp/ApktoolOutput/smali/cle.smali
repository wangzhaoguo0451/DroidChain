.class public final Lcle;
.super Ljava/lang/Object;
.source "AccountModifyProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcle;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 368
    packed-switch p2, :pswitch_data_0

    .line 374
    :goto_0
    return-void

    .line 370
    :pswitch_0
    iget-object v0, p0, Lcle;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->d(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V

    goto :goto_0

    .line 373
    :pswitch_1
    iget-object v0, p0, Lcle;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
