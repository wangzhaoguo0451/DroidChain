.class public final Lecc;
.super Ljava/lang/Object;
.source "CommonViewPager.java"

# interfaces
.implements Lhw;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/views/CommonViewPager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/views/CommonViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lecc;->a:Lcom/wandoujia/launcher/launcher/views/CommonViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lecc;->a:Lcom/wandoujia/launcher/launcher/views/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->a(Lcom/wandoujia/launcher/launcher/views/CommonViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lecc;->a:Lcom/wandoujia/launcher/launcher/views/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->a(Lcom/wandoujia/launcher/launcher/views/CommonViewPager;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1}, Lhw;->a(I)V

    .line 45
    :cond_0
    iget-object v0, p0, Lecc;->a:Lcom/wandoujia/launcher/launcher/views/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->b(Lcom/wandoujia/launcher/launcher/views/CommonViewPager;)V

    .line 46
    return-void
.end method

.method public final a(IFI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lecc;->a:Lcom/wandoujia/launcher/launcher/views/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->a(Lcom/wandoujia/launcher/launcher/views/CommonViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lecc;->a:Lcom/wandoujia/launcher/launcher/views/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->a(Lcom/wandoujia/launcher/launcher/views/CommonViewPager;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lhw;->a(IFI)V

    .line 38
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lecc;->a:Lcom/wandoujia/launcher/launcher/views/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->a(Lcom/wandoujia/launcher/launcher/views/CommonViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lecc;->a:Lcom/wandoujia/launcher/launcher/views/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->a(Lcom/wandoujia/launcher/launcher/views/CommonViewPager;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1}, Lhw;->b(I)V

    .line 53
    :cond_0
    if-nez p1, :cond_1

    .line 54
    iget-object v0, p0, Lecc;->a:Lcom/wandoujia/launcher/launcher/views/CommonViewPager;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->b(Lcom/wandoujia/launcher/launcher/views/CommonViewPager;)V

    .line 56
    :cond_1
    return-void
.end method
