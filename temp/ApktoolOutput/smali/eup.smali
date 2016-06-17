.class public final Leup;
.super Landroid/widget/BaseAdapter;
.source "FakeGridAdapter.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field private e:I

.field private final f:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Leup;->f:Landroid/widget/BaseAdapter;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput p1, p0, Leup;->e:I

    .line 31
    invoke-virtual {p0}, Leup;->notifyDataSetChanged()V

    .line 32
    return-void
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Leup;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    iget v1, p0, Leup;->e:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Leup;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    iget v1, p0, Leup;->e:I

    div-int/2addr v0, v1

    .line 60
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Leup;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    iget v1, p0, Leup;->e:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 65
    iget v0, p0, Leup;->e:I

    mul-int/2addr v0, p1

    .line 66
    iget-object v1, p0, Leup;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 71
    iget v0, p0, Leup;->e:I

    mul-int/2addr v0, p1

    .line 72
    iget-object v1, p0, Leup;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 77
    iget v0, p0, Leup;->e:I

    mul-int v7, p1, v0

    .line 78
    iget v0, p0, Leup;->e:I

    mul-int/2addr v0, p1

    iget v1, p0, Leup;->e:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Leup;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget v0, p0, Leup;->e:I

    .line 79
    :goto_0
    check-cast p2, Leuq;

    .line 80
    if-nez p2, :cond_0

    .line 81
    new-instance p2, Leuq;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, v2}, Leuq;-><init>(Landroid/content/Context;B)V

    :cond_0
    move v1, v2

    .line 83
    :goto_1
    iget v3, p0, Leup;->e:I

    if-ge v1, v3, :cond_b

    .line 85
    invoke-virtual {p2}, Leuq;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_d

    .line 86
    invoke-virtual {p2, v1}, Leuq;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 88
    :goto_2
    add-int v8, v7, v1

    .line 90
    if-ge v1, v0, :cond_5

    .line 91
    instance-of v3, v4, Leur;

    if-eqz v3, :cond_4

    .line 92
    iget-object v3, p0, Leup;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v8, v6, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 99
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_7

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_4
    invoke-direct {v9, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f80

    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v5, p0, Leup;->e:I

    rem-int v5, v8, v5

    if-nez v5, :cond_8

    iget v5, p0, Leup;->c:I

    :goto_5
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v5, v8, 0x1

    iget v10, p0, Leup;->e:I

    rem-int/2addr v5, v10

    if-nez v5, :cond_9

    iget v5, p0, Leup;->c:I

    :goto_6
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v5, p0, Leup;->e:I

    div-int v5, v8, v5

    if-nez v5, :cond_a

    iget v5, p0, Leup;->d:I

    :goto_7
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    if-eq v3, v4, :cond_2

    .line 101
    if-eqz v4, :cond_1

    .line 102
    invoke-virtual {p2, v4}, Leuq;->removeView(Landroid/view/View;)V

    .line 104
    :cond_1
    invoke-virtual {p2, v3, v1}, Leuq;->addView(Landroid/view/View;I)V

    .line 83
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    :cond_3
    iget-object v1, p0, Leup;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    sub-int v0, v1, v0

    goto :goto_0

    .line 94
    :cond_4
    iget-object v3, p0, Leup;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v8, v4, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    .line 97
    :cond_5
    instance-of v3, v4, Leur;

    if-eqz v3, :cond_6

    move-object v3, v4

    goto :goto_3

    :cond_6
    new-instance v3, Leur;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Leur;-><init>(Landroid/content/Context;B)V

    goto :goto_3

    .line 99
    :cond_7
    const/4 v5, -0x2

    goto :goto_4

    :cond_8
    iget v5, p0, Leup;->a:I

    goto :goto_5

    :cond_9
    move v5, v2

    goto :goto_6

    :cond_a
    iget v5, p0, Leup;->b:I

    goto :goto_7

    .line 108
    :cond_b
    invoke-virtual {p2}, Leuq;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    iget v1, p0, Leup;->e:I

    if-lt v0, v1, :cond_c

    .line 109
    invoke-virtual {p2, v0}, Leuq;->removeViewAt(I)V

    .line 108
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 111
    :cond_c
    return-object p2

    :cond_d
    move-object v4, v6

    goto/16 :goto_2
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 165
    iget-object v0, p0, Leup;->f:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Leup;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 168
    :cond_0
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 173
    iget-object v0, p0, Leup;->f:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Leup;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 176
    :cond_0
    return-void
.end method
