.class public abstract Lern;
.super Lerv;
.source "HeaderFooterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lerv",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public c:Lers;

.field private e:Lers;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Lerv;-><init>()V

    .line 74
    new-instance v0, Lers;

    invoke-direct {v0}, Lers;-><init>()V

    iput-object v0, p0, Lern;->c:Lers;

    .line 75
    new-instance v0, Lers;

    invoke-direct {v0}, Lers;-><init>()V

    iput-object v0, p0, Lern;->e:Lers;

    .line 76
    iget-object v0, p0, Lern;->c:Lers;

    new-instance v1, Lerq;

    new-instance v2, Lero;

    invoke-direct {v2}, Lero;-><init>()V

    invoke-direct {v1, p0, v2}, Lerq;-><init>(Lern;Lerr;)V

    invoke-virtual {v0, v1}, Lers;->a(Luj;)V

    .line 84
    iget-object v0, p0, Lern;->e:Lers;

    new-instance v1, Lerq;

    new-instance v2, Lerp;

    invoke-direct {v2, p0}, Lerp;-><init>(Lern;)V

    invoke-direct {v1, p0, v2}, Lerq;-><init>(Lern;Lerr;)V

    invoke-virtual {v0, v1}, Lers;->a(Luj;)V

    .line 92
    return-void
.end method

.method private f(I)Z
    .locals 1
    .parameter

    .prologue
    .line 198
    .line 199
    if-ltz p1, :cond_0

    iget-object v0, p0, Lern;->c:Lers;

    invoke-virtual {v0}, Lers;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(I)Z
    .locals 2
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lern;->c:Lers;

    invoke-virtual {v0}, Lers;->a()I

    move-result v0

    sub-int v0, p1, v0

    .line 204
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lern;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(I)Z
    .locals 2
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lern;->i(I)I

    move-result v0

    .line 209
    if-ltz v0, :cond_0

    iget-object v1, p0, Lern;->e:Lers;

    invoke-virtual {v1}, Lers;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(I)I
    .locals 2
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lern;->c:Lers;

    invoke-virtual {v0}, Lers;->a()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lern;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lern;->c:Lers;

    invoke-virtual {v0}, Lers;->a()I

    move-result v0

    iget-object v1, p0, Lern;->e:Lers;

    invoke-virtual {v1}, Lers;->a()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lern;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(I)I
    .locals 3
    .parameter

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lern;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/high16 v0, 0x2

    iget-object v1, p0, Lern;->c:Lers;

    invoke-virtual {v1, p1}, Lers;->a(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 181
    :goto_0
    return v0

    .line 174
    :cond_0
    invoke-direct {p0, p1}, Lern;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lern;->c:Lers;

    invoke-virtual {v0}, Lers;->a()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lern;->e(I)I

    move-result v0

    .line 176
    const v1, 0xffff

    if-le v0, v1, :cond_1

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "item view type can not exceed 0xffff"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    or-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 181
    :cond_2
    const/high16 v0, 0x1

    iget-object v1, p0, Lern;->e:Lers;

    invoke-direct {p0, p1}, Lern;->i(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lers;->a(I)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public final a(Lert;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lern;->c:Lers;

    invoke-virtual {v0, p1}, Lers;->a(Lert;)V

    .line 96
    return-void
.end method

.method public a(Lerw;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    invoke-super {p0, p1}, Lerv;->a(Lerw;)V

    .line 127
    invoke-virtual {p1}, Lerw;->c()I

    move-result v0

    .line 128
    invoke-direct {p0, v0}, Lern;->f(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lern;->c:Lers;

    invoke-virtual {v1, v0}, Lers;->e(I)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-direct {p0, v0}, Lern;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lern;->e:Lers;

    invoke-direct {p0, v0}, Lern;->i(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lers;->e(I)V

    goto :goto_0
.end method

.method public final a(Lerw;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p2}, Lern;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lern;->c:Lers;

    invoke-virtual {v0, p1, p2}, Lers;->a(Lerw;I)V

    .line 168
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-direct {p0, p2}, Lern;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lern;->c:Lers;

    invoke-virtual {v0}, Lers;->a()I

    move-result v0

    sub-int v0, p2, v0

    invoke-super {p0, p1, v0}, Lerv;->a(Lerw;I)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lern;->e:Lers;

    invoke-direct {p0, p2}, Lern;->i(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lers;->a(Lerw;I)V

    goto :goto_0
.end method

.method public final bridge synthetic a(Lux;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    check-cast p1, Lerw;

    invoke-virtual {p0, p1, p2}, Lern;->a(Lerw;I)V

    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lern;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lern;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected final b(Landroid/view/ViewGroup;I)Lerf;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 148
    const v0, 0xffff

    and-int/2addr v0, p2

    .line 149
    const/high16 v1, 0x3

    and-int/2addr v1, p2

    .line 150
    const/high16 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 151
    iget-object v1, p0, Lern;->c:Lers;

    invoke-virtual {v1, p1, v0}, Lers;->b(Landroid/view/ViewGroup;I)Lerf;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 152
    :cond_0
    if-nez v1, :cond_1

    .line 153
    invoke-virtual {p0, p1, p2}, Lern;->c(Landroid/view/ViewGroup;I)Lerf;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lern;->e:Lers;

    invoke-virtual {v1, p1, v0}, Lers;->b(Landroid/view/ViewGroup;I)Lerf;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lert;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lern;->e:Lers;

    invoke-virtual {v0, p1}, Lers;->a(Lert;)V

    .line 100
    return-void
.end method

.method public final b(Lerw;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    invoke-super {p0, p1}, Lerv;->b(Lerw;)V

    .line 138
    invoke-virtual {p1}, Lerw;->c()I

    move-result v0

    .line 139
    invoke-direct {p0, v0}, Lern;->f(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lern;->c:Lers;

    invoke-virtual {v1, v0}, Lers;->f(I)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-direct {p0, v0}, Lern;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lern;->e:Lers;

    invoke-direct {p0, v0}, Lern;->i(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lers;->f(I)V

    goto :goto_0
.end method

.method public synthetic b(Lux;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lerw;

    invoke-virtual {p0, p1}, Lern;->a(Lerw;)V

    return-void
.end method

.method public abstract c(Landroid/view/ViewGroup;I)Lerf;
.end method

.method public final synthetic c(Lux;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lerw;

    invoke-virtual {p0, p1}, Lern;->b(Lerw;)V

    return-void
.end method

.method protected final d(I)I
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lern;->c:Lers;

    invoke-virtual {v0}, Lers;->a()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public abstract e(I)I
.end method
