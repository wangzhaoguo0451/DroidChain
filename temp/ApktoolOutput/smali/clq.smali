.class public final Lclq;
.super Ljava/lang/Object;
.source "AccountRegisterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/dto/WandouResponse;

.field private synthetic b:Lcom/wandoujia/account/fragment/AccountRegisterFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lclq;->b:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iput-object p2, p0, Lclq;->a:Lcom/wandoujia/account/dto/WandouResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 676
    iget-object v0, p0, Lclq;->a:Lcom/wandoujia/account/dto/WandouResponse;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v0

    const v1, 0xf4241

    if-ne v0, v1, :cond_0

    .line 677
    iget-object v0, p0, Lclq;->b:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    .line 679
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 680
    return-void
.end method
