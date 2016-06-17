.class public final Leoe;
.super Ljava/lang/Object;
.source "LogViewPager.java"

# interfaces
.implements Lhw;


# instance fields
.field private synthetic a:Lcom/wandoujia/logv3/toolkit/LogViewPager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/logv3/toolkit/LogViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Leoe;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Leoe;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->getAdapter()Lgf;

    move-result-object v1

    .line 41
    instance-of v0, v1, Leoh;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Leoe;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->b(Lcom/wandoujia/logv3/toolkit/LogViewPager;)I

    move-result v0

    if-eq v0, p1, :cond_1

    move-object v0, v1

    .line 43
    check-cast v0, Leoh;

    iget-object v2, p0, Leoe;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-static {v2}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->b(Lcom/wandoujia/logv3/toolkit/LogViewPager;)I

    move-result v2

    invoke-interface {v0, v2}, Leoh;->c(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 45
    instance-of v2, v0, Leoi;

    if-eqz v2, :cond_0

    .line 46
    check-cast v0, Leoi;

    invoke-interface {v0}, Leoi;->i()V

    .line 48
    :cond_0
    iget-object v0, p0, Leoe;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-static {v0, p1}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->a(Lcom/wandoujia/logv3/toolkit/LogViewPager;I)I

    .line 49
    check-cast v1, Leoh;

    iget-object v0, p0, Leoe;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->b(Lcom/wandoujia/logv3/toolkit/LogViewPager;)I

    move-result v0

    invoke-interface {v1, v0}, Leoh;->c(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 51
    instance-of v1, v0, Leoi;

    if-eqz v1, :cond_1

    .line 52
    check-cast v0, Leoi;

    invoke-interface {v0}, Leoi;->h()V

    .line 56
    :cond_1
    iget-object v0, p0, Leoe;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->a(Lcom/wandoujia/logv3/toolkit/LogViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Leoe;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->a(Lcom/wandoujia/logv3/toolkit/LogViewPager;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1}, Lhw;->a(I)V

    .line 59
    :cond_2
    iget-object v0, p0, Leoe;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->c(Lcom/wandoujia/logv3/toolkit/LogViewPager;)V

    .line 60
    return-void
.end method

.method public final a(IFI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Leoe;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->a(Lcom/wandoujia/logv3/toolkit/LogViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Leoe;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->a(Lcom/wandoujia/logv3/toolkit/LogViewPager;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lhw;->a(IFI)V

    .line 36
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Leoe;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->a(Lcom/wandoujia/logv3/toolkit/LogViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Leoe;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->a(Lcom/wandoujia/logv3/toolkit/LogViewPager;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1}, Lhw;->b(I)V

    .line 67
    :cond_0
    if-nez p1, :cond_1

    .line 68
    iget-object v0, p0, Leoe;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->c(Lcom/wandoujia/logv3/toolkit/LogViewPager;)V

    .line 70
    :cond_1
    return-void
.end method
