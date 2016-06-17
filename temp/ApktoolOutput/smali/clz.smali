.class public final Lclz;
.super Ljava/lang/Object;
.source "AccountRegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lclz;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lclz;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcom/wandoujia/account/widget/AccountEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lclz;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->b(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 286
    return-void
.end method
