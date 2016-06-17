.class public final Ldzs;
.super Ljava/lang/Object;
.source "GameFolderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Ldzs;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Ldzs;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Ldzs;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 131
    :cond_0
    return-void
.end method
