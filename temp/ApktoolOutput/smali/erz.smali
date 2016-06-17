.class public final Lerz;
.super Ljava/lang/Object;
.source "CommonViewPager.java"

# interfaces
.implements Lhw;


# instance fields
.field private synthetic a:Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lerz;->a:Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lerz;->a:Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->a(Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lerz;->a:Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->a(Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1}, Lhw;->a(I)V

    .line 41
    :cond_0
    iget-object v0, p0, Lerz;->a:Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->b(Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;)V

    .line 42
    return-void
.end method

.method public final a(IFI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lerz;->a:Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->a(Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lerz;->a:Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->a(Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lhw;->a(IFI)V

    .line 34
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lerz;->a:Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->a(Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lerz;->a:Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->a(Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1}, Lhw;->b(I)V

    .line 49
    :cond_0
    if-nez p1, :cond_1

    .line 50
    iget-object v0, p0, Lerz;->a:Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->b(Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;)V

    .line 52
    :cond_1
    return-void
.end method
