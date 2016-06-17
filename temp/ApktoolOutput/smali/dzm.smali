.class public final Ldzm;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Lefm;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Ldzm;->a:Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Ldzm;->a:Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;->e()V

    .line 23
    :cond_0
    return-void
.end method
