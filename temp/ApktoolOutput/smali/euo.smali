.class public final Leuo;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandableHeaderViewAdapter.java"


# instance fields
.field private final a:Landroid/widget/BaseExpandableListAdapter;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private a(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    if-nez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseExpandableListAdapter;->getGroupCount()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Leuo;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Leuo;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0}, Leuo;->notifyDataSetChanged()V

    .line 58
    :cond_0
    return-void
.end method

.method public final getChild(II)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1}, Leuo;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0, p2}, Landroid/widget/BaseExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    .line 118
    :cond_0
    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1}, Leuo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    const/4 v1, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1, p2}, Landroid/widget/BaseExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 134
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    const/4 v1, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/BaseExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Leuo;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    goto :goto_0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1}, Leuo;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/BaseExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    .line 110
    :cond_0
    return-object v0
.end method

.method public final getGroupCount()I
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v0, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Leuo;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->getGroupCount()I

    move-result v0

    goto :goto_0
.end method

.method public final getGroupId(I)J
    .locals 2
    .parameter

    .prologue
    .line 123
    invoke-direct {p0, p1}, Leuo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    const/4 v1, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    .line 126
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 149
    if-ge p1, v1, :cond_0

    .line 150
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 156
    :goto_0
    return-object v0

    .line 152
    :cond_0
    iget-object v0, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 153
    :goto_1
    add-int v2, v1, v0

    if-ge p1, v2, :cond_2

    .line 154
    iget-object v0, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    sub-int v1, p1, v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/widget/BaseExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->getGroupCount()I

    move-result v0

    goto :goto_1

    .line 156
    :cond_2
    iget-object v2, p0, Leuo;->b:Ljava/util/List;

    sub-int v1, p1, v1

    sub-int v0, v1, v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->hasStableIds()Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Leuo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Leuo;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->isChildSelectable(II)Z

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
