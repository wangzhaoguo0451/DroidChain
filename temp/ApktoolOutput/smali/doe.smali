.class final Ldoe;
.super Lhnv;
.source "HistoryVersionSubtitlePresenter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lhnv;-><init>(Landroid/view/View;)V

    .line 56
    iget-object v0, p2, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldoe;->a:Ljava/util/List;

    .line 58
    iget-object v0, p2, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    .line 59
    iget-object v2, p0, Ldoe;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    iget-object v4, v4, Lcom/wandoujia/api/proto/DownloadUrl;->market:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->size:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    .line 62
    :cond_1
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ldoe;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldoe;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Ldoe;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const v0, 0x7f0300fb

    invoke-static {p3, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    .line 85
    const v0, 0x7f0c02ff

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Ldoe;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 87
    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Ldoe;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldoe;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 76
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Ldoe;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 93
    const/4 p2, 0x0

    .line 101
    :goto_0
    return-object p2

    .line 95
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NON_DROPDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    :cond_1
    const v0, 0x7f03011a

    invoke-static {p3, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    .line 97
    const-string v0, "NON_DROPDOWN"

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :cond_2
    const v0, 0x7f0c02ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Ldoe;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
