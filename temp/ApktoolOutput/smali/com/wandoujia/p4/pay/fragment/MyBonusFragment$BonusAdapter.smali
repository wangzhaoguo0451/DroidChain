.class Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyBonusFragment.java"


# instance fields
.field private listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter;->listData:Ljava/util/List;

    .line 171
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 172
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 183
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    if-nez p2, :cond_1

    .line 189
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03024b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 190
    new-instance v1, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter$ViewHolder;-><init>()V

    .line 191
    const v0, 0x7f0c04bb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0c04bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter$ViewHolder;->info:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f0c04ba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, v1, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter$ViewHolder;->icon:Lcom/wandoujia/image/view/AsyncImageView;

    .line 194
    const v0, 0x7f0c04be

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 195
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 199
    :goto_0
    iget-object v2, v1, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter;->listData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "game"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, v1, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter$ViewHolder;->info:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter;->listData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "game_subtitle"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v2, v1, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter$ViewHolder;->date:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter;->listData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "note"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter;->listData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter$ViewHolder;->icon:Lcom/wandoujia/image/view/AsyncImageView;

    const v2, 0x7f02022c

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 207
    :cond_0
    return-object p2

    .line 197
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0
.end method
