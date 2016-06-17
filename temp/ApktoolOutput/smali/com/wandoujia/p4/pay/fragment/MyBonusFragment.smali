.class public Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;
.super Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;
.source "MyBonusFragment.java"


# instance fields
.field private bonusList:Landroid/widget/ListView;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;-><init>()V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->toBigDecimal(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->getMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->bonusList:Landroid/widget/ListView;

    return-object v0
.end method

.method private getData(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 97
    return-object p1
.end method

.method private getMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    const-string v1, "game"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "game_subtitle"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "note"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "img"

    const v2, 0x7f02022c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "url"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-object v0
.end method

.method private loadData()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$1;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$1;-><init>(Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;)V

    invoke-static {v0}, Lcom/wandoujia/p4/pay/utils/PaymentUtil;->getBonus(Lcom/wandoujia/rpc/http/callback/Callback;)V

    .line 163
    return-void
.end method

.method private toBigDecimal(Ljava/lang/Long;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 101
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 102
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "100"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f03024a

    return v0
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->mRootView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0c04b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->bonusList:Landroid/widget/ListView;

    .line 51
    return-void
.end method

.method protected onPrepareLoading()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->loadData()V

    .line 78
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f0e0419

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method
