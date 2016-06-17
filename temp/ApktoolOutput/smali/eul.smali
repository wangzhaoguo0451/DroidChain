.class public final Leul;
.super Ljava/lang/Object;
.source "BaseCardSelectableAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Leul;->a:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Leul;->a:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;

    invoke-static {v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Leul;->a:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;

    invoke-static {v1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Leul;->a:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;

    invoke-virtual {v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d()V

    .line 176
    iget-object v0, p0, Leul;->a:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;

    invoke-virtual {v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b()V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Leul;->a:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, v1, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a()V

    invoke-virtual {v1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
