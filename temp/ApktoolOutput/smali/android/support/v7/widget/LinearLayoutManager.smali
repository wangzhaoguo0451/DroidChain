.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Luo;
.source "LinearLayoutManager.java"


# instance fields
.field private a:Ltm;

.field public b:I

.field public c:Lub;

.field d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ltk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(I)V

    .line 145
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Luo;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    .line 126
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    .line 130
    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 136
    new-instance v0, Ltk;

    invoke-direct {v0, p0}, Ltk;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Ltk;

    .line 154
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(I)V

    .line 155
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private a(ILur;Luv;Z)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 837
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->c()I

    move-result v0

    sub-int/2addr v0, p1

    .line 838
    if-lez v0, :cond_1

    .line 840
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILur;Luv;)I

    move-result v0

    neg-int v0, v0

    .line 845
    add-int v1, p1, v0

    .line 846
    if-eqz p4, :cond_0

    .line 848
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v2}, Lub;->c()I

    move-result v2

    sub-int v1, v2, v1

    .line 849
    if-lez v1, :cond_0

    .line 850
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v2, v1}, Lub;->a(I)V

    .line 851
    add-int/2addr v0, v1

    .line 854
    :cond_0
    :goto_0
    return v0

    .line 842
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lur;Ltm;Luv;Z)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, -0x8000

    const/4 v6, 0x0

    .line 1310
    iget v1, p2, Ltm;->c:I

    .line 1311
    iget v0, p2, Ltm;->g:I

    if-eq v0, v7, :cond_1

    .line 1313
    iget v0, p2, Ltm;->c:I

    if-gez v0, :cond_0

    .line 1314
    iget v0, p2, Ltm;->g:I

    iget v2, p2, Ltm;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Ltm;->g:I

    .line 1316
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Ltm;)V

    .line 1318
    :cond_1
    iget v0, p2, Ltm;->c:I

    iget v2, p2, Ltm;->h:I

    add-int/2addr v0, v2

    .line 1319
    new-instance v2, Ltl;

    invoke-direct {v2}, Ltl;-><init>()V

    .line 1320
    :cond_2
    if-lez v0, :cond_7

    invoke-virtual {p2, p3}, Ltm;->a(Luv;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1321
    iput v6, v2, Ltl;->a:I

    iput-boolean v6, v2, Ltl;->b:Z

    iput-boolean v6, v2, Ltl;->c:Z

    iput-boolean v6, v2, Ltl;->d:Z

    .line 1322
    invoke-virtual {p0, p1, p3, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Luv;Ltm;Ltl;)V

    .line 1323
    iget-boolean v3, v2, Ltl;->b:Z

    if-nez v3, :cond_7

    .line 1324
    iget v3, p2, Ltm;->b:I

    iget v4, v2, Ltl;->a:I

    iget v5, p2, Ltm;->f:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Ltm;->b:I

    .line 1333
    iget-boolean v3, v2, Ltl;->c:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget-object v3, v3, Ltm;->j:Ljava/util/List;

    if-nez v3, :cond_3

    iget-boolean v3, p3, Luv;->j:Z

    if-nez v3, :cond_4

    .line 1335
    :cond_3
    iget v3, p2, Ltm;->c:I

    iget v4, v2, Ltl;->a:I

    sub-int/2addr v3, v4

    iput v3, p2, Ltm;->c:I

    .line 1337
    iget v3, v2, Ltl;->a:I

    sub-int/2addr v0, v3

    .line 1340
    :cond_4
    iget v3, p2, Ltm;->g:I

    if-eq v3, v7, :cond_6

    .line 1341
    iget v3, p2, Ltm;->g:I

    iget v4, v2, Ltl;->a:I

    add-int/2addr v3, v4

    iput v3, p2, Ltm;->g:I

    .line 1342
    iget v3, p2, Ltm;->c:I

    if-gez v3, :cond_5

    .line 1343
    iget v3, p2, Ltm;->g:I

    iget v4, p2, Ltm;->c:I

    add-int/2addr v3, v4

    iput v3, p2, Ltm;->g:I

    .line 1345
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Ltm;)V

    .line 1347
    :cond_6
    if-eqz p4, :cond_2

    iget-boolean v3, v2, Ltl;->d:Z

    if-eqz v3, :cond_2

    .line 1348
    :cond_7
    iget v0, p2, Ltm;->c:I

    sub-int v0, v1, v0

    return v0
.end method

.method private a(IIZ)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1675
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()V

    .line 1676
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->b()I

    move-result v3

    .line 1677
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->c()I

    move-result v4

    .line 1678
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 1679
    :goto_0
    const/4 v2, 0x0

    .line 1680
    :goto_1
    if-eq p1, p2, :cond_3

    .line 1681
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    .line 1682
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v5, v1}, Lub;->a(Landroid/view/View;)I

    move-result v5

    .line 1683
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v6, v1}, Lub;->b(Landroid/view/View;)I

    move-result v6

    .line 1684
    if-ge v5, v4, :cond_4

    if-le v6, v3, :cond_4

    .line 1685
    if-eqz p3, :cond_0

    .line 1686
    if-lt v5, v3, :cond_2

    if-gt v6, v4, :cond_2

    .line 1696
    :cond_0
    :goto_2
    return-object v1

    .line 1678
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1688
    :cond_2
    if-nez v2, :cond_4

    .line 1680
    :goto_3
    add-int/2addr p1, v0

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 1696
    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_3
.end method

.method private a(Z)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 1497
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v0, :cond_0

    .line 1498
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    .line 1501
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private a(IIZLuv;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 1107
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    invoke-direct {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->g(Luv;)I

    move-result v3

    iput v3, v2, Ltm;->h:I

    .line 1108
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput p1, v2, Ltm;->f:I

    .line 1110
    if-ne p1, v1, :cond_2

    .line 1111
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v3, v2, Ltm;->h:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v4}, Lub;->f()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Ltm;->h:I

    .line 1113
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v2

    .line 1115
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Ltm;->e:I

    .line 1117
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v3, v3, Ltm;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Ltm;->d:I

    .line 1118
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1, v2}, Lub;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Ltm;->b:I

    .line 1120
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0, v2}, Lub;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1}, Lub;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1133
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput p2, v1, Ltm;->c:I

    .line 1134
    if-eqz p3, :cond_0

    .line 1135
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v2, v1, Ltm;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Ltm;->c:I

    .line 1137
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput v0, v1, Ltm;->g:I

    .line 1138
    return-void

    :cond_1
    move v0, v1

    .line 1115
    goto :goto_0

    .line 1124
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v2

    .line 1125
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v4, v3, Ltm;->h:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v5}, Lub;->b()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Ltm;->h:I

    .line 1126
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Ltm;->e:I

    .line 1128
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v3, v3, Ltm;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Ltm;->d:I

    .line 1129
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1, v2}, Lub;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Ltm;->b:I

    .line 1130
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0, v2}, Lub;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1}, Lub;->b()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1126
    goto :goto_2
.end method

.method private a(Ltk;)V
    .locals 2
    .parameter

    .prologue
    .line 883
    iget v0, p1, Ltk;->a:I

    iget v1, p1, Ltk;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    .line 884
    return-void
.end method

.method private a(Lur;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1180
    if-ne p2, p3, :cond_1

    .line 1195
    :cond_0
    return-void

    .line 1186
    :cond_1
    if-le p3, p2, :cond_2

    .line 1187
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    .line 1188
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILur;)V

    .line 1187
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1191
    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    .line 1192
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILur;)V

    .line 1191
    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Lur;Ltm;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1286
    iget-boolean v0, p2, Ltm;->a:Z

    if-nez v0, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1289
    :cond_1
    iget v0, p2, Ltm;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 1290
    iget v0, p2, Ltm;->g:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v2

    if-ltz v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v3}, Lub;->d()I

    move-result v3

    sub-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v5, v4}, Lub;->a(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;II)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v4, v1}, Lub;->a(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_4

    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;II)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1292
    :cond_5
    iget v2, p2, Ltm;->g:I

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v0, :cond_7

    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v4, v1}, Lub;->b(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_6

    add-int/lit8 v1, v3, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;II)V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v5, v4}, Lub;->b(Landroid/view/View;)I

    move-result v4

    if-le v4, v2, :cond_8

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;II)V

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private b(ILur;Luv;Z)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 862
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->b()I

    move-result v0

    sub-int v0, p1, v0

    .line 863
    if-lez v0, :cond_1

    .line 866
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILur;Luv;)I

    move-result v0

    neg-int v0, v0

    .line 870
    add-int v1, p1, v0

    .line 871
    if-eqz p4, :cond_0

    .line 873
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v2}, Lub;->b()I

    move-result v2

    sub-int/2addr v1, v2

    .line 874
    if-lez v1, :cond_0

    .line 875
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Lub;->a(I)V

    .line 876
    sub-int/2addr v0, v1

    .line 879
    :cond_0
    :goto_0
    return v0

    .line 868
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Z)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 1515
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v0, :cond_0

    .line 1516
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    .line 1519
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ltk;)V
    .locals 2
    .parameter

    .prologue
    .line 897
    iget v0, p1, Ltk;->a:I

    iget v1, p1, Ltk;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 898
    return-void
.end method

.method private d(ILur;Luv;)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1141
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    .line 1163
    :goto_0
    return p1

    .line 1144
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput-boolean v1, v0, Ltm;->a:Z

    .line 1145
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()V

    .line 1146
    if-lez p1, :cond_2

    move v0, v1

    .line 1147
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1148
    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLuv;)V

    .line 1149
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v1, v1, Ltm;->g:I

    .line 1150
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    invoke-direct {p0, p2, v4, p3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Ltm;Luv;Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 1151
    if-gez v1, :cond_3

    move p1, v2

    .line 1155
    goto :goto_0

    .line 1146
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1157
    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    .line 1158
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lub;->a(I)V

    .line 1162
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput p1, v0, Ltm;->i:I

    goto :goto_0
.end method

.method private f(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 887
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v2}, Lub;->c()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Ltm;->c:I

    .line 888
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Ltm;->e:I

    .line 890
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput p1, v0, Ltm;->d:I

    .line 891
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput v1, v0, Ltm;->f:I

    .line 892
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput p2, v0, Ltm;->b:I

    .line 893
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/high16 v1, -0x8000

    iput v1, v0, Ltm;->g:I

    .line 894
    return-void

    :cond_0
    move v0, v1

    .line 888
    goto :goto_0
.end method

.method private g(Luv;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 414
    iget v1, p1, Luv;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    .line 415
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->e()I

    move-result v0

    .line 417
    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 414
    goto :goto_0
.end method

.method private g(I)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 1557
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private g(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 901
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v2}, Lub;->b()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Ltm;->c:I

    .line 902
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput p1, v0, Ltm;->d:I

    .line 903
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Ltm;->e:I

    .line 905
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput v1, v0, Ltm;->f:I

    .line 906
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput p2, v0, Ltm;->b:I

    .line 907
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/high16 v1, -0x8000

    iput v1, v0, Ltm;->g:I

    .line 909
    return-void

    :cond_0
    move v0, v1

    .line 903
    goto :goto_0
.end method

.method private h(Luv;)I
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1041
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    :goto_0
    return v4

    .line 1044
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()V

    .line 1045
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Ld;->a(Luv;Lub;Landroid/view/View;Landroid/view/View;Luo;ZZ)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private h(I)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 1561
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private i(Luv;)I
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1052
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    :goto_0
    return v4

    .line 1055
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()V

    .line 1056
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Ld;->a(Luv;Lub;Landroid/view/View;Landroid/view/View;Luo;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private j(Luv;)I
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1063
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    :goto_0
    return v4

    .line 1066
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()V

    .line 1067
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Ld;->b(Luv;Lub;Landroid/view/View;Landroid/view/View;Luo;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private k(Luv;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 1536
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Luv;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->g(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Luv;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private l(Luv;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 1552
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Luv;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Luv;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->g(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private s()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 340
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    :cond_0
    const/4 v0, 0x0

    .line 343
    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    .line 345
    return-void
.end method

.method private t()Landroid/view/View;
    .locals 1

    .prologue
    .line 1475
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()Landroid/view/View;
    .locals 1

    .prologue
    .line 1485
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(ILur;Luv;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 992
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 993
    const/4 v0, 0x0

    .line 995
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILur;Luv;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Luv;)I
    .locals 1
    .parameter

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Luv;)I

    move-result v0

    return v0
.end method

.method public a()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>()V

    return-object v0
.end method

.method a(III)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1566
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()V

    .line 1569
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->b()I

    move-result v5

    .line 1570
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->c()I

    move-result v6

    .line 1571
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 1572
    :goto_1
    if-eq p1, p2, :cond_3

    .line 1573
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v3

    .line 1574
    invoke-static {v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    .line 1575
    if-ltz v0, :cond_6

    if-ge v0, p3, :cond_6

    .line 1576
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v0}, Lux;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1577
    if-nez v4, :cond_6

    move-object v0, v2

    .line 1572
    :goto_2
    add-int/2addr p1, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 1571
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1580
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0, v3}, Lub;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0, v3}, Lub;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 1582
    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    .line 1583
    goto :goto_2

    .line 1590
    :cond_3
    if-eqz v2, :cond_5

    move-object v3, v2

    :cond_4
    :goto_3
    return-object v3

    :cond_5
    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 321
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid orientation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 325
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    if-ne p1, v0, :cond_1

    .line 331
    :goto_0
    return-void

    .line 328
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    .line 329
    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    .line 330
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()V

    goto :goto_0
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 260
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 261
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 262
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()V

    .line 269
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Lur;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-super {p0, p1, p2}, Luo;->a(Landroid/support/v7/widget/RecyclerView;Lur;)V

    .line 214
    return-void
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 222
    invoke-super {p0, p1}, Luo;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 223
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    invoke-static {p1}, Lix;->a(Landroid/view/accessibility/AccessibilityEvent;)Ljt;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljt;->b(I)V

    .line 227
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljt;->c(I)V

    .line 229
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1168
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1169
    invoke-super {p0, p1}, Luo;->a(Ljava/lang/String;)V

    .line 1171
    :cond_0
    return-void
.end method

.method a(Lur;Luv;Ltm;Ltl;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x1

    .line 1359
    invoke-virtual {p3, p1}, Ltm;->a(Lur;)Landroid/view/View;

    move-result-object v6

    .line 1360
    if-nez v6, :cond_0

    .line 1366
    iput-boolean v5, p4, Ltl;->b:Z

    .line 1429
    :goto_0
    return-void

    .line 1369
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1370
    iget-object v1, p3, Ltm;->j:Ljava/util/List;

    if-nez v1, :cond_5

    .line 1371
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    iget v1, p3, Ltm;->f:I

    if-ne v1, v9, :cond_3

    move v1, v5

    :goto_1
    if-ne v3, v1, :cond_4

    .line 1373
    invoke-super {p0, v6, v9, v2}, Luo;->a(Landroid/view/View;IZ)V

    .line 1385
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, p0, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {p0}, Luo;->m()I

    move-result v4

    invoke-virtual {p0}, Luo;->o()I

    move-result v7

    invoke-virtual {p0}, Luo;->q()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    iget v7, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Luo;->d()Z

    move-result v8

    invoke-static {v4, v3, v7, v8}, Luo;->a(IIIZ)I

    move-result v3

    invoke-virtual {p0}, Luo;->n()I

    move-result v4

    invoke-virtual {p0}, Luo;->p()I

    move-result v7

    invoke-virtual {p0}, Luo;->r()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Luo;->e()Z

    move-result v7

    invoke-static {v4, v2, v1, v7}, Luo;->a(IIIZ)I

    move-result v1

    invoke-virtual {v6, v3, v1}, Landroid/view/View;->measure(II)V

    .line 1386
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1, v6}, Lub;->c(Landroid/view/View;)I

    move-result v1

    iput v1, p4, Ltl;->a:I

    .line 1388
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    if-ne v1, v5, :cond_a

    .line 1389
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1390
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1391
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v2, v6}, Lub;->d(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    .line 1396
    :goto_3
    iget v3, p3, Ltm;->f:I

    if-ne v3, v9, :cond_9

    .line 1397
    iget v3, p3, Ltm;->b:I

    .line 1398
    iget v4, p3, Ltm;->b:I

    iget v7, p4, Ltl;->a:I

    sub-int/2addr v4, v7

    move v10, v3

    move v3, v4

    move v4, v2

    move v2, v1

    move v1, v10

    .line 1417
    :goto_4
    iget v7, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v4, v7

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v7

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v7

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v7

    invoke-static {v6, v4, v3, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1425
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v1}, Lux;->o()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v0}, Lux;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1426
    :cond_1
    iput-boolean v5, p4, Ltl;->c:Z

    .line 1428
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, p4, Ltl;->d:Z

    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 1371
    goto/16 :goto_1

    .line 1375
    :cond_4
    invoke-super {p0, v6, v2, v2}, Luo;->a(Landroid/view/View;IZ)V

    goto/16 :goto_2

    .line 1378
    :cond_5
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    iget v1, p3, Ltm;->f:I

    if-ne v1, v9, :cond_6

    move v1, v5

    :goto_5
    if-ne v3, v1, :cond_7

    .line 1380
    invoke-super {p0, v6, v9, v5}, Luo;->a(Landroid/view/View;IZ)V

    goto/16 :goto_2

    :cond_6
    move v1, v2

    .line 1378
    goto :goto_5

    .line 1382
    :cond_7
    invoke-super {p0, v6, v2, v5}, Luo;->a(Landroid/view/View;IZ)V

    goto/16 :goto_2

    .line 1393
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()I

    move-result v2

    .line 1394
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1, v6}, Lub;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_3

    .line 1400
    :cond_9
    iget v4, p3, Ltm;->b:I

    .line 1401
    iget v3, p3, Ltm;->b:I

    iget v7, p4, Ltl;->a:I

    add-int/2addr v3, v7

    move v10, v3

    move v3, v4

    move v4, v2

    move v2, v1

    move v1, v10

    goto :goto_4

    .line 1404
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()I

    move-result v3

    .line 1405
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1, v6}, Lub;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v3

    .line 1407
    iget v2, p3, Ltm;->f:I

    if-ne v2, v9, :cond_b

    .line 1408
    iget v2, p3, Ltm;->b:I

    .line 1409
    iget v4, p3, Ltm;->b:I

    iget v7, p4, Ltl;->a:I

    sub-int/2addr v4, v7

    goto :goto_4

    .line 1411
    :cond_b
    iget v4, p3, Ltm;->b:I

    .line 1412
    iget v2, p3, Ltm;->b:I

    iget v7, p4, Ltl;->a:I

    add-int/2addr v2, v7

    goto :goto_4
.end method

.method a(Luv;Ltk;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 623
    return-void
.end method

.method public final b(ILur;Luv;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1004
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    if-nez v0, :cond_0

    .line 1005
    const/4 v0, 0x0

    .line 1007
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILur;Luv;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Luv;)I
    .locals 1
    .parameter

    .prologue
    .line 1017
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Luv;)I

    move-result v0

    return v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    .line 386
    if-nez v0, :cond_1

    .line 387
    const/4 v0, 0x0

    .line 398
    :cond_0
    :goto_0
    return-object v0

    .line 389
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    .line 390
    sub-int v1, p1, v1

    .line 391
    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 392
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 393
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 398
    :cond_2
    invoke-super {p0, p1}, Luo;->b(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Luv;)I
    .locals 1
    .parameter

    .prologue
    .line 1022
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Luv;)I

    move-result v0

    return v0
.end method

.method public final c()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    .line 255
    :goto_0
    return-object v0

    .line 236
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 237
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    if-lez v1, :cond_2

    .line 238
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()V

    .line 239
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    xor-int/lit8 v1, v1, 0x0

    .line 240
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    .line 241
    if-eqz v1, :cond_1

    .line 242
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v1

    .line 243
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v2}, Lub;->c()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v3, v1}, Lub;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    .line 245
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v1

    .line 248
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 249
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v2, v1}, Lub;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v2}, Lub;->b()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    goto :goto_0

    .line 253
    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0
.end method

.method public final c(ILur;Luv;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/high16 v6, -0x8000

    .line 1702
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 1703
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    if-nez v1, :cond_1

    .line 1740
    :cond_0
    :goto_0
    return-object v0

    .line 1707
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v3, v6

    .line 1708
    :goto_1
    if-eq v3, v6, :cond_0

    .line 1711
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()V

    .line 1713
    if-ne v3, v4, :cond_6

    .line 1714
    invoke-direct {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->l(Luv;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1718
    :goto_2
    if-eqz v2, :cond_0

    .line 1725
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()V

    .line 1726
    const v1, 0x3ea8f5c3

    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v7}, Lub;->e()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 1727
    invoke-direct {p0, v3, v1, v8, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLuv;)V

    .line 1728
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput v6, v1, Ltm;->g:I

    .line 1729
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput-boolean v8, v1, Ltm;->a:Z

    .line 1730
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    invoke-direct {p0, p2, v1, p3, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Ltm;Luv;Z)I

    .line 1732
    if-ne v3, v4, :cond_7

    .line 1733
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v1

    .line 1737
    :goto_3
    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1740
    goto :goto_0

    :sswitch_0
    move v3, v4

    .line 1707
    goto :goto_1

    :sswitch_1
    move v3, v5

    goto :goto_1

    :sswitch_2
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    if-ne v1, v5, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_1

    :sswitch_3
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    if-ne v1, v5, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v6

    goto :goto_1

    :sswitch_4
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    if-nez v1, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_1

    :sswitch_5
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    if-nez v1, :cond_5

    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v6

    goto :goto_1

    .line 1716
    :cond_6
    invoke-direct {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->k(Luv;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    .line 1735
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v1

    goto :goto_3

    .line 1707
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public c(Lur;Luv;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    .line 468
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()V

    .line 469
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ltm;->a:Z

    .line 471
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 473
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Ltk;

    const/4 v1, -0x1

    iput v1, v0, Ltk;->a:I

    const/high16 v1, -0x8000

    iput v1, v0, Ltk;->b:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Ltk;->c:Z

    .line 474
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Ltk;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    xor-int/lit8 v1, v1, 0x0

    iput-boolean v1, v0, Ltk;->c:Z

    .line 476
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Ltk;

    iget-boolean v0, p2, Luv;->j:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v3}, Lux;->o()Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v3}, Lux;->d()I

    move-result v3

    if-ltz v3, :cond_1b

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v0}, Lux;->d()I

    move-result v0

    invoke-virtual {p2}, Luv;->a()I

    move-result v3

    if-ge v0, v3, :cond_1b

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_1e

    iget-object v0, v2, Ltk;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->a()I

    move-result v0

    if-ltz v0, :cond_1c

    invoke-virtual {v2, v1}, Ltk;->a(Landroid/view/View;)V

    :cond_2
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_3

    invoke-virtual {v2}, Ltk;->a()V

    const/4 v0, 0x0

    iput v0, v2, Ltk;->a:I

    .line 485
    :cond_3
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(Luv;)I

    move-result v0

    .line 488
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v1, v1, Ltm;->i:I

    if-ltz v1, :cond_25

    .line 490
    const/4 v1, 0x0

    .line 495
    :goto_5
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v2}, Lub;->b()I

    move-result v2

    add-int/2addr v1, v2

    .line 496
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v2}, Lub;->f()I

    move-result v2

    add-int/2addr v0, v2

    .line 497
    iget-boolean v2, p2, Luv;->j:Z

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_4

    .line 502
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v2

    .line 503
    if-eqz v2, :cond_4

    .line 506
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v3, :cond_26

    .line 507
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v3}, Lub;->c()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v4, v2}, Lub;->b(Landroid/view/View;)I

    move-result v2

    sub-int v2, v3, v2

    .line 509
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    sub-int/2addr v2, v3

    .line 515
    :goto_6
    if-lez v2, :cond_27

    .line 516
    add-int/2addr v1, v2

    .line 524
    :cond_4
    :goto_7
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Ltk;

    invoke-virtual {p0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Luv;Ltk;)V

    .line 525
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;)V

    .line 526
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Ltk;

    iget-boolean v2, v2, Ltk;->c:Z

    if-eqz v2, :cond_28

    .line 529
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Ltk;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Ltk;)V

    .line 530
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput v1, v2, Ltm;->h:I

    .line 531
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Ltm;Luv;Z)I

    .line 532
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v1, v1, Ltm;->b:I

    .line 533
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v3, v2, Ltm;->d:I

    .line 534
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v2, v2, Ltm;->c:I

    if-lez v2, :cond_5

    .line 535
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v2, v2, Ltm;->c:I

    add-int/2addr v0, v2

    .line 538
    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Ltk;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ltk;)V

    .line 539
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput v0, v2, Ltm;->h:I

    .line 540
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v2, v0, Ltm;->d:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v4, v4, Ltm;->e:I

    add-int/2addr v2, v4

    iput v2, v0, Ltm;->d:I

    .line 541
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Ltm;Luv;Z)I

    .line 542
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v2, v0, Ltm;->b:I

    .line 544
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v0, v0, Ltm;->c:I

    if-lez v0, :cond_34

    .line 546
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v0, v0, Ltm;->c:I

    .line 547
    invoke-direct {p0, v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 548
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput v0, v1, Ltm;->h:I

    .line 549
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Ltm;Luv;Z)I

    .line 550
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v0, v0, Ltm;->b:I

    :goto_8
    move v1, v0

    move v0, v2

    .line 582
    :cond_6
    :goto_9
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v2

    if-lez v2, :cond_33

    .line 586
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    xor-int/lit8 v2, v2, 0x0

    if-eqz v2, :cond_2a

    .line 587
    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILur;Luv;Z)I

    move-result v2

    .line 588
    add-int/2addr v1, v2

    .line 589
    add-int/2addr v0, v2

    .line 590
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILur;Luv;Z)I

    move-result v2

    .line 591
    add-int/2addr v1, v2

    .line 592
    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    .line 602
    :goto_a
    iget-boolean v0, p2, Luv;->l:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p2, Luv;->j:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 603
    :cond_7
    :goto_b
    iget-boolean v0, p2, Luv;->j:Z

    if-nez v0, :cond_8

    .line 604
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    .line 605
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    .line 606
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->e()I

    move-result v1

    iput v1, v0, Lub;->b:I

    .line 608
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 613
    return-void

    .line 476
    :cond_9
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    invoke-virtual {p2}, Luv;->a()I

    move-result v1

    if-lt v0, v1, :cond_b

    :cond_a
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    iput v0, v2, Ltk;->a:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    iput-boolean v0, v2, Ltk;->c:Z

    iget-boolean v0, v2, Ltk;->c:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->c()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    sub-int/2addr v0, v1

    iput v0, v2, Ltk;->b:I

    :goto_c
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->b()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    add-int/2addr v0, v1

    iput v0, v2, Ltk;->b:I

    goto :goto_c

    :cond_d
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_16

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1, v0}, Lub;->c(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v3}, Lub;->e()I

    move-result v3

    if-le v1, v3, :cond_e

    invoke-virtual {v2}, Ltk;->a()V

    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1, v0}, Lub;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v3}, Lub;->b()I

    move-result v3

    sub-int/2addr v1, v3

    if-gez v1, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->b()I

    move-result v0

    iput v0, v2, Ltk;->b:I

    const/4 v0, 0x0

    iput-boolean v0, v2, Ltk;->c:Z

    goto :goto_d

    :cond_f
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1}, Lub;->c()I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v3, v0}, Lub;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    if-gez v1, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->c()I

    move-result v0

    iput v0, v2, Ltk;->b:I

    const/4 v0, 0x1

    iput-boolean v0, v2, Ltk;->c:Z

    goto :goto_d

    :cond_10
    iget-boolean v1, v2, Ltk;->c:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1, v0}, Lub;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1}, Lub;->a()I

    move-result v1

    add-int/2addr v0, v1

    :goto_e
    iput v0, v2, Ltk;->b:I

    :goto_f
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1, v0}, Lub;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_e

    :cond_12
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ge v1, v0, :cond_14

    const/4 v0, 0x1

    :goto_10
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, v2, Ltk;->c:Z

    :cond_13
    invoke-virtual {v2}, Ltk;->a()V

    goto :goto_f

    :cond_14
    const/4 v0, 0x0

    goto :goto_10

    :cond_15
    const/4 v0, 0x0

    goto :goto_11

    :cond_16
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    iput-boolean v0, v2, Ltk;->c:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->c()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    sub-int/2addr v0, v1

    iput v0, v2, Ltk;->b:I

    goto/16 :goto_d

    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->b()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    add-int/2addr v0, v1

    iput v0, v2, Ltk;->b:I

    goto/16 :goto_d

    :cond_18
    iget-object v0, p0, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, p0, Luo;->e:Lsa;

    invoke-virtual {v1, v0}, Lsa;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_1

    :cond_1a
    move-object v1, v0

    goto/16 :goto_1

    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_1c
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Ltk;->a:I

    iget-boolean v3, v2, Ltk;->c:Z

    if-eqz v3, :cond_1d

    iget-object v3, v2, Ltk;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v3}, Lub;->c()I

    move-result v3

    sub-int v0, v3, v0

    iget-object v3, v2, Ltk;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v3, v1}, Lub;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, v2, Ltk;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v3}, Lub;->c()I

    move-result v3

    sub-int/2addr v3, v0

    iput v3, v2, Ltk;->b:I

    if-lez v0, :cond_2

    iget-object v3, v2, Ltk;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v3, v1}, Lub;->c(Landroid/view/View;)I

    move-result v3

    iget v4, v2, Ltk;->b:I

    sub-int v3, v4, v3

    iget-object v4, v2, Ltk;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v4}, Lub;->b()I

    move-result v4

    iget-object v5, v2, Ltk;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v5, v1}, Lub;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v1, v4

    const/4 v5, 0x0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v4

    sub-int v1, v3, v1

    if-gez v1, :cond_2

    iget v3, v2, Ltk;->b:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, v2, Ltk;->b:I

    goto/16 :goto_3

    :cond_1d
    iget-object v3, v2, Ltk;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v3, v1}, Lub;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, v2, Ltk;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v4}, Lub;->b()I

    move-result v4

    sub-int v4, v3, v4

    iput v3, v2, Ltk;->b:I

    if-lez v4, :cond_2

    iget-object v5, v2, Ltk;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v5, v1}, Lub;->c(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v2, Ltk;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v5}, Lub;->c()I

    move-result v5

    sub-int v0, v5, v0

    iget-object v5, v2, Ltk;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v5, v1}, Lub;->b(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, v2, Ltk;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1}, Lub;->c()I

    move-result v1

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    sub-int/2addr v0, v3

    if-gez v0, :cond_2

    iget v1, v2, Ltk;->b:I

    neg-int v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, v2, Ltk;->b:I

    goto/16 :goto_3

    :cond_1e
    iget-boolean v0, v2, Ltk;->c:Z

    if-eqz v0, :cond_21

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->k(Luv;)Landroid/view/View;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_24

    invoke-virtual {v2, v0}, Ltk;->a(Landroid/view/View;)V

    iget-boolean v1, p2, Luv;->j:Z

    if-nez v1, :cond_20

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1, v0}, Lub;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v3}, Lub;->c()I

    move-result v3

    if-ge v1, v3, :cond_1f

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1, v0}, Lub;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v1}, Lub;->b()I

    move-result v1

    if-ge v0, v1, :cond_22

    :cond_1f
    const/4 v0, 0x1

    :goto_13
    if-eqz v0, :cond_20

    iget-boolean v0, v2, Ltk;->c:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->c()I

    move-result v0

    :goto_14
    iput v0, v2, Ltk;->b:I

    :cond_20
    const/4 v0, 0x1

    goto/16 :goto_4

    :cond_21
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->l(Luv;)Landroid/view/View;

    move-result-object v0

    goto :goto_12

    :cond_22
    const/4 v0, 0x0

    goto :goto_13

    :cond_23
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v0}, Lub;->b()I

    move-result v0

    goto :goto_14

    :cond_24
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 492
    :cond_25
    const/4 v1, 0x0

    move v11, v1

    move v1, v0

    move v0, v11

    goto/16 :goto_5

    .line 511
    :cond_26
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v3, v2}, Lub;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    invoke-virtual {v3}, Lub;->b()I

    move-result v3

    sub-int/2addr v2, v3

    .line 513
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    sub-int v2, v3, v2

    goto/16 :goto_6

    .line 518
    :cond_27
    sub-int/2addr v0, v2

    goto/16 :goto_7

    .line 554
    :cond_28
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Ltk;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ltk;)V

    .line 555
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput v0, v2, Ltm;->h:I

    .line 556
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Ltm;Luv;Z)I

    .line 557
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v0, v0, Ltm;->b:I

    .line 558
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v2, v2, Ltm;->d:I

    .line 559
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v3, v3, Ltm;->c:I

    if-lez v3, :cond_29

    .line 560
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v3, v3, Ltm;->c:I

    add-int/2addr v1, v3

    .line 563
    :cond_29
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Ltk;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Ltk;)V

    .line 564
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput v1, v3, Ltm;->h:I

    .line 565
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v3, v1, Ltm;->d:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v4, v4, Ltm;->e:I

    add-int/2addr v3, v4

    iput v3, v1, Ltm;->d:I

    .line 566
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, p2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Ltm;Luv;Z)I

    .line 567
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v1, v1, Ltm;->b:I

    .line 569
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v3, v3, Ltm;->c:I

    if-lez v3, :cond_6

    .line 570
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v3, v3, Ltm;->c:I

    .line 572
    invoke-direct {p0, v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    .line 573
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput v3, v0, Ltm;->h:I

    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Ltm;Luv;Z)I

    .line 575
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iget v0, v0, Ltm;->b:I

    goto/16 :goto_9

    .line 594
    :cond_2a
    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILur;Luv;Z)I

    move-result v2

    .line 595
    add-int/2addr v1, v2

    .line 596
    add-int/2addr v0, v2

    .line 597
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILur;Luv;Z)I

    move-result v2

    .line 598
    add-int/2addr v1, v2

    .line 599
    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_a

    .line 602
    :cond_2b
    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v7, p1, Lur;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v9

    const/4 v0, 0x0

    move v6, v0

    :goto_15
    if-ge v6, v8, :cond_2f

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lux;

    invoke-virtual {v0}, Lux;->o()Z

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {v0}, Lux;->d()I

    move-result v3

    if-ge v3, v9, :cond_2c

    const/4 v3, 0x1

    :goto_16
    iget-boolean v10, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eq v3, v10, :cond_2d

    const/4 v3, -0x1

    :goto_17
    const/4 v10, -0x1

    if-ne v3, v10, :cond_2e

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    iget-object v0, v0, Lux;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Lub;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v5

    move v3, v0

    move v0, v4

    :goto_18
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v5, v3

    move v4, v0

    goto :goto_15

    :cond_2c
    const/4 v3, 0x0

    goto :goto_16

    :cond_2d
    const/4 v3, 0x1

    goto :goto_17

    :cond_2e
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    iget-object v0, v0, Lux;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Lub;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v4

    move v3, v5

    goto :goto_18

    :cond_2f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput-object v7, v0, Ltm;->j:Ljava/util/List;

    if-lez v5, :cond_30

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput v5, v0, Ltm;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/4 v2, 0x0

    iput v2, v0, Ltm;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ltm;->a(Lux;)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Ltm;Luv;Z)I

    :cond_30
    if-lez v4, :cond_31

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    iput v4, v0, Ltm;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/4 v1, 0x0

    iput v1, v0, Ltm;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltm;->a(Lux;)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Ltm;Luv;Z)I

    :cond_31
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    const/4 v1, 0x0

    iput-object v1, v0, Ltm;->j:Ljava/util/List;

    goto/16 :goto_b

    :cond_32
    move v0, v4

    move v3, v5

    goto :goto_18

    :cond_33
    move v2, v1

    move v1, v0

    goto/16 :goto_a

    :cond_34
    move v0, v1

    goto/16 :goto_8
.end method

.method public d(Luv;)I
    .locals 1
    .parameter

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Luv;)I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Luv;)I
    .locals 1
    .parameter

    .prologue
    .line 1032
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Luv;)I

    move-result v0

    return v0
.end method

.method public final e(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 977
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    .line 978
    iput p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    .line 979
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 982
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()V

    .line 983
    return-void
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 284
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Luv;)I
    .locals 1
    .parameter

    .prologue
    .line 1037
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Luv;)I

    move-result v0

    return v0
.end method

.method protected final f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 912
    iget-object v1, p0, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Lgs;->h(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final g()V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    if-nez v0, :cond_0

    .line 917
    new-instance v0, Ltm;

    invoke-direct {v0}, Ltm;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Ltm;

    .line 919
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    if-nez v0, :cond_1

    .line 920
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    invoke-static {p0, v0}, Lub;->a(Luo;I)Lub;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Lub;

    .line 922
    :cond_1
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 949
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    .line 950
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    .line 951
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 954
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()V

    .line 955
    return-void
.end method

.method public final i()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1612
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    invoke-direct {p0, v1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    .line 1613
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final j()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1652
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v1

    .line 1653
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method
