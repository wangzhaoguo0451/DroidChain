.class public final Lead;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lead;->a:Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lead;->a:Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lead;->a:Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 72
    :cond_0
    return-void
.end method
