.class public final Lfts;
.super Ljava/lang/Object;
.source "TabHostFragment.java"

# interfaces
.implements Lhw;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/fragment/TabHostFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/fragment/TabHostFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lfts;->a:Lcom/wandoujia/p4/fragment/TabHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lfts;->a:Lcom/wandoujia/p4/fragment/TabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->b(Lcom/wandoujia/p4/fragment/TabHostFragment;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 55
    iget-object v0, p0, Lfts;->a:Lcom/wandoujia/p4/fragment/TabHostFragment;

    iget-object v1, p0, Lfts;->a:Lcom/wandoujia/p4/fragment/TabHostFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->b(Lcom/wandoujia/p4/fragment/TabHostFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->c(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->h()V

    .line 59
    :cond_0
    iget-object v0, p0, Lfts;->a:Lcom/wandoujia/p4/fragment/TabHostFragment;

    invoke-static {v0, p1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->a(Lcom/wandoujia/p4/fragment/TabHostFragment;I)I

    .line 63
    iget-object v0, p0, Lfts;->a:Lcom/wandoujia/p4/fragment/TabHostFragment;

    iget-object v1, p0, Lfts;->a:Lcom/wandoujia/p4/fragment/TabHostFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->b(Lcom/wandoujia/p4/fragment/TabHostFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->c(I)Landroid/support/v4/app/Fragment;

    .line 64
    :cond_1
    iget-object v0, p0, Lfts;->a:Lcom/wandoujia/p4/fragment/TabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->a(Lcom/wandoujia/p4/fragment/TabHostFragment;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lfts;->a:Lcom/wandoujia/p4/fragment/TabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->a(Lcom/wandoujia/p4/fragment/TabHostFragment;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1}, Lhw;->a(I)V

    .line 71
    :cond_2
    return-void
.end method

.method public final a(IFI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lfts;->a:Lcom/wandoujia/p4/fragment/TabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->a(Lcom/wandoujia/p4/fragment/TabHostFragment;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lfts;->a:Lcom/wandoujia/p4/fragment/TabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->a(Lcom/wandoujia/p4/fragment/TabHostFragment;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lhw;->a(IFI)V

    .line 50
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lfts;->a:Lcom/wandoujia/p4/fragment/TabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->a(Lcom/wandoujia/p4/fragment/TabHostFragment;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lfts;->a:Lcom/wandoujia/p4/fragment/TabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->a(Lcom/wandoujia/p4/fragment/TabHostFragment;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1}, Lhw;->b(I)V

    .line 79
    :cond_0
    return-void
.end method
