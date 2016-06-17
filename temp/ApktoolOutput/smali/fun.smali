.class public final Lfun;
.super Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;
.source "MyGiftSelectableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter",
        "<",
        "Lfvq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method static synthetic a(Lfun;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lfun;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lfun;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, Lhoq;

    iget-object v1, p0, Lfun;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lhoq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0347

    invoke-virtual {v0, v1}, Lhoq;->a(I)Lhoq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v1

    const v2, 0x7f0e0162

    new-instance v3, Lfur;

    invoke-direct {v3}, Lfur;-><init>()V

    invoke-virtual {v1, v2, v3}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v1

    const v2, 0x7f0e023a

    new-instance v3, Lfuq;

    invoke-direct {v3}, Lfuq;-><init>()V

    invoke-virtual {v1, v2, v3}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lhoq;->a(Z)Lhoq;

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    return-void
.end method

.method static synthetic b(Lfun;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lfun;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lfun;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lfun;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Landroid/view/ViewGroup;)Lcom/wandoujia/mvc/BaseView;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-static {p1}, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/gift/views/MyGiftCardView;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic f()Lcom/wandoujia/mvc/BaseController;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lfvo;

    invoke-direct {v0}, Lfvo;-><init>()V

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lfun;->a(I)Lcom/wandoujia/mvc/BaseModel;

    move-result-object v0

    check-cast v0, Lfvq;

    iget-object v0, v0, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f0e0264

    return v0
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f0202e5

    return v0
.end method

.method protected final j()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 57
    invoke-virtual {p0}, Lfun;->k()Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    new-instance v1, Lhoq;

    iget-object v2, p0, Lfun;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lhoq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0347

    invoke-virtual {v1, v2}, Lhoq;->a(I)Lhoq;

    move-result-object v2

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0345

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v2

    const v3, 0x7f0e0162

    new-instance v4, Lfup;

    invoke-direct {v4}, Lfup;-><init>()V

    invoke-virtual {v2, v3, v4}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v2

    const v3, 0x7f0e023a

    new-instance v4, Lfuo;

    invoke-direct {v4, p0, v0}, Lfuo;-><init>(Lfun;Ljava/util/List;)V

    invoke-virtual {v2, v3, v4}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0, v8}, Lhoq;->a(Z)Lhoq;

    invoke-virtual {v1}, Lhoq;->b()Lhoj;

    goto :goto_0
.end method
