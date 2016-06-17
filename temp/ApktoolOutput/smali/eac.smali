.class public final Leac;
.super Ljava/lang/Object;
.source "GameSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Leac;->a:Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Leac;->a:Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Leac;->a:Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 82
    :cond_0
    return-void
.end method
