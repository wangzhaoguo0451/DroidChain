.class public final Lacg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Stack;

.field b:Ljava/util/ArrayList;

.field private c:Lacj;


# direct methods
.method public constructor <init>(Lacj;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lacg;->a:Ljava/util/Stack;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacg;->b:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lacg;->c:Lacj;

    .line 27
    return-void
.end method

.method private b(Ladl;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lacg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    return-void

    .line 182
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/bh;

    .line 183
    invoke-interface {v0, p0, p1}, Lcom/alipay/wandoujia/bh;->a(Lacg;Ladl;)V

    goto :goto_0
.end method

.method private g()Ladq;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladq;

    .line 161
    invoke-virtual {v0}, Ladq;->i()V

    .line 162
    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v1, p0, Lacg;->c:Lacj;

    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladl;

    invoke-virtual {v1, v0}, Lacj;->b(Ladl;)V

    .line 169
    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladq;

    .line 174
    iget-object v1, p0, Lacg;->c:Lacj;

    invoke-virtual {v1, v0}, Lacj;->a(Ladl;)V

    .line 176
    invoke-direct {p0, v0}, Lacg;->b(Ladl;)V

    .line 178
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ladl;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladl;

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ladl;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lacg;->c:Lacj;

    invoke-virtual {v0, p1}, Lacj;->a(Ladl;)V

    .line 43
    instance-of v0, p1, Ladq;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Ladq;

    .line 45
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-direct {p0, p1}, Lacg;->b(Ladl;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0}, Lacg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 85
    :goto_0
    return v0

    .line 67
    :cond_0
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladq;

    iget-object v0, v0, Ladl;->b:Lada;

    invoke-virtual {v0}, Lada;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v1

    .line 69
    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 74
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lacg;->g()Ladq;

    .line 75
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 76
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladq;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :try_start_1
    invoke-virtual {v0}, Ladq;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Ladq;->e:Z
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_2

    .line 84
    :goto_1
    invoke-direct {p0}, Lacg;->i()V

    .line 85
    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 78
    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    :goto_2
    invoke-static {v2}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 85
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 94
    :cond_0
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 99
    :cond_1
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladq;

    .line 100
    invoke-virtual {v0}, Ladq;->a()Z

    move-result v0

    .line 101
    if-nez v0, :cond_2

    .line 102
    invoke-direct {p0}, Lacg;->g()Ladq;

    .line 104
    :cond_2
    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lacg;->h()V

    .line 108
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 118
    const/4 v1, 0x0

    .line 119
    :cond_0
    :try_start_0
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 143
    :goto_0
    return v0

    .line 125
    :cond_1
    invoke-direct {p0}, Lacg;->g()Ladq;

    move-result-object v0

    .line 126
    if-nez v1, :cond_2

    move-object v1, v0

    .line 129
    :cond_2
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 130
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladq;

    .line 134
    invoke-virtual {v1}, Ladq;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ladq;->a()Z
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 138
    :goto_1
    invoke-virtual {v0}, Ladq;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    invoke-direct {p0}, Lacg;->i()V

    .line 143
    :goto_2
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 132
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    invoke-static {v1}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 141
    :cond_4
    invoke-direct {p0}, Lacg;->h()V

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 148
    iget-object v0, p0, Lacg;->c:Lacj;

    invoke-virtual {v0}, Lacj;->b()V

    .line 149
    return-void
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lacg;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 156
    iget-object v0, p0, Lacg;->c:Lacj;

    invoke-virtual {v0}, Lacj;->c()V

    .line 157
    return-void
.end method
