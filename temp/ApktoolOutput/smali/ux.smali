.class public abstract Lux;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field public final a:Landroid/view/View;

.field public b:I

.field public c:I

.field d:I

.field e:I

.field public f:Lux;

.field public g:Lux;

.field public h:I

.field i:Lur;

.field j:Landroid/support/v7/widget/RecyclerView;

.field private k:J

.field private l:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 7965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7873
    iput v2, p0, Lux;->b:I

    .line 7874
    iput v2, p0, Lux;->c:I

    .line 7875
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lux;->k:J

    .line 7876
    iput v2, p0, Lux;->d:I

    .line 7877
    iput v2, p0, Lux;->e:I

    .line 7880
    iput-object v3, p0, Lux;->f:Lux;

    .line 7882
    iput-object v3, p0, Lux;->g:Lux;

    .line 7953
    const/4 v0, 0x0

    iput v0, p0, Lux;->l:I

    .line 7957
    iput-object v3, p0, Lux;->i:Lur;

    .line 7966
    if-nez p1, :cond_0

    .line 7967
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7969
    :cond_0
    iput-object p1, p0, Lux;->a:Landroid/view/View;

    .line 7970
    return-void
.end method

.method static synthetic a(Lux;)Z
    .locals 1
    .parameter

    .prologue
    .line 7871
    iget v0, p0, Lux;->h:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 7995
    iput v0, p0, Lux;->c:I

    .line 7996
    iput v0, p0, Lux;->e:I

    .line 7997
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 8174
    iget v0, p0, Lux;->h:I

    or-int/2addr v0, p1

    iput v0, p0, Lux;->h:I

    .line 8175
    return-void
.end method

.method final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8170
    iget v0, p0, Lux;->h:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lux;->h:I

    .line 8171
    return-void
.end method

.method public final a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 7979
    iget v0, p0, Lux;->c:I

    if-ne v0, v1, :cond_0

    .line 7980
    iget v0, p0, Lux;->b:I

    iput v0, p0, Lux;->c:I

    .line 7982
    :cond_0
    iget v0, p0, Lux;->e:I

    if-ne v0, v1, :cond_1

    .line 7983
    iget v0, p0, Lux;->b:I

    iput v0, p0, Lux;->e:I

    .line 7985
    :cond_1
    if-eqz p2, :cond_2

    .line 7986
    iget v0, p0, Lux;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lux;->e:I

    .line 7988
    :cond_2
    iget v0, p0, Lux;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lux;->b:I

    .line 7989
    iget-object v0, p0, Lux;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7990
    iget-object v0, p0, Lux;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    .line 7992
    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 8221
    if-eqz p1, :cond_1

    iget v0, p0, Lux;->l:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lux;->l:I

    .line 8222
    iget v0, p0, Lux;->l:I

    if-gez v0, :cond_2

    .line 8223
    const/4 v0, 0x0

    iput v0, p0, Lux;->l:I

    .line 8228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8238
    :cond_0
    :goto_1
    return-void

    .line 8221
    :cond_1
    iget v0, p0, Lux;->l:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8230
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lux;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 8231
    iget v0, p0, Lux;->h:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lux;->h:I

    goto :goto_1

    .line 8232
    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Lux;->l:I

    if-nez v0, :cond_0

    .line 8233
    iget v0, p0, Lux;->h:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lux;->h:I

    goto :goto_1
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 8006
    iget v0, p0, Lux;->h:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8019
    iget v0, p0, Lux;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lux;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lux;->e:I

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 8045
    iget v0, p0, Lux;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lux;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lux;->e:I

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 8071
    iget-object v0, p0, Lux;->j:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 8072
    const/4 v0, -0x1

    .line 8074
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lux;->j:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Lux;)I

    move-result v0

    goto :goto_0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 8110
    iget-object v0, p0, Lux;->i:Lur;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final g()V
    .locals 1

    .prologue
    .line 8114
    iget-object v0, p0, Lux;->i:Lur;

    invoke-virtual {v0, p0}, Lur;->b(Lux;)V

    .line 8115
    return-void
.end method

.method final h()Z
    .locals 1

    .prologue
    .line 8118
    iget v0, p0, Lux;->h:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()V
    .locals 1

    .prologue
    .line 8122
    iget v0, p0, Lux;->h:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lux;->h:I

    .line 8123
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 8126
    iget v0, p0, Lux;->h:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lux;->h:I

    .line 8127
    return-void
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 8138
    iget v0, p0, Lux;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l()Z
    .locals 1

    .prologue
    .line 8142
    iget v0, p0, Lux;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 8146
    iget v0, p0, Lux;->h:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 8150
    iget v0, p0, Lux;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 8154
    iget v0, p0, Lux;->h:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 8162
    iget v0, p0, Lux;->h:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final q()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 8178
    iput v3, p0, Lux;->h:I

    .line 8179
    iput v2, p0, Lux;->b:I

    .line 8180
    iput v2, p0, Lux;->c:I

    .line 8181
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lux;->k:J

    .line 8182
    iput v2, p0, Lux;->e:I

    .line 8183
    iput v3, p0, Lux;->l:I

    .line 8184
    iput-object v4, p0, Lux;->f:Lux;

    .line 8185
    iput-object v4, p0, Lux;->g:Lux;

    .line 8186
    return-void
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 8246
    iget v0, p0, Lux;->h:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lux;->a:Landroid/view/View;

    invoke-static {v0}, Lgs;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8190
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ViewHolder{"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lux;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lux;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lux;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pLpos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lux;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8193
    invoke-virtual {p0}, Lux;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " scrap"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8194
    :cond_0
    invoke-virtual {p0}, Lux;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8195
    :cond_1
    invoke-virtual {p0}, Lux;->n()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8196
    :cond_2
    invoke-virtual {p0}, Lux;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8197
    :cond_3
    invoke-virtual {p0}, Lux;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8198
    :cond_4
    invoke-virtual {p0}, Lux;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8199
    :cond_5
    invoke-virtual {p0}, Lux;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " changed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8200
    :cond_6
    invoke-virtual {p0}, Lux;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8201
    :cond_7
    invoke-virtual {p0}, Lux;->r()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " not recyclable("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lux;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8202
    :cond_8
    iget v0, p0, Lux;->h:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lux;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_a

    const-string v0, "undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8204
    :cond_a
    iget-object v0, p0, Lux;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8205
    :cond_b
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8202
    :cond_c
    const/4 v0, 0x0

    goto :goto_0
.end method
