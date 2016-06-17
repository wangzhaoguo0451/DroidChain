.class public final Lckv;
.super Ljava/lang/Object;
.source "AccountLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountLoginFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lckv;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lckv;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->d(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lckv;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Lcom/wandoujia/account/widget/AccountEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setText(Ljava/lang/CharSequence;)V

    .line 307
    return-void
.end method
