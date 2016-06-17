.class public final Leks;
.super Ljava/lang/Object;
.source "SearchPopupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Leks;->a:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Leks;->a:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Leks;->a:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 101
    :cond_0
    return-void
.end method
