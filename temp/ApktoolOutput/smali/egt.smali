.class public final Legt;
.super Ljava/lang/Object;
.source "CommonViewPager.java"

# interfaces
.implements Lhw;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Legt;->a:Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Legt;->a:Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->a(Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Legt;->a:Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->a(Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1}, Lhw;->a(I)V

    .line 43
    :cond_0
    iget-object v0, p0, Legt;->a:Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->b(Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;)V

    .line 44
    return-void
.end method

.method public final a(IFI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Legt;->a:Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->a(Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Legt;->a:Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->a(Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;)Lhw;

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
    .line 48
    iget-object v0, p0, Legt;->a:Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->a(Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Legt;->a:Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->a(Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1}, Lhw;->b(I)V

    .line 51
    :cond_0
    if-nez p1, :cond_1

    .line 52
    iget-object v0, p0, Legt;->a:Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->b(Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;)V

    .line 54
    :cond_1
    return-void
.end method
