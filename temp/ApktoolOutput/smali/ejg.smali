.class public final Lejg;
.super Landroid/widget/BaseAdapter;
.source "ExtensionPackAdapter.java"


# instance fields
.field a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lejh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lejh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lejg;->a:I

    .line 42
    iput-object p1, p0, Lejg;->b:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lejg;->a:I

    .line 38
    invoke-virtual {p0}, Lejg;->notifyDataSetChanged()V

    .line 39
    return-void
.end method

.method public final b(I)Lejh;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lejg;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lejg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 57
    iget-object v0, p0, Lejg;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejh;

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lejg;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lejg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lejg;->b(I)Lejh;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    if-eqz p2, :cond_0

    .line 72
    check-cast p2, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;

    .line 76
    :goto_0
    iget-object v0, p0, Lejg;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejh;

    .line 78
    iget-object v1, v0, Lejh;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;->setInfo(Ljava/lang/String;)V

    .line 79
    iget-object v0, v0, Lejh;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;->setTitle(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lejg;->a:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;->setCheckState(Z)V

    .line 83
    return-object p2

    .line 74
    :cond_0
    invoke-static {p3}, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;

    move-result-object p2

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
