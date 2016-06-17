.class final Laao;
.super Ljava/lang/Object;
.source "DeviceIdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laao;->a:Landroid/content/Context;

    iput-object p2, p0, Laao;->b:Ljava/util/Map;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/16 v10, 0x14

    const/4 v2, 0x0

    .line 56
    :try_start_0
    new-instance v4, Laaq;

    invoke-direct {v4}, Laaq;-><init>()V

    .line 57
    iget-object v3, p0, Laao;->a:Landroid/content/Context;

    iget-object v5, p0, Laao;->b:Ljava/util/Map;

    invoke-static {}, Laak;->a()Laak;

    invoke-static {v3}, Laat;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "tid"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v6, v4, Laaq;->a:Laar;

    const-string v0, "tid"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Laar;->p:Ljava/lang/String;

    :cond_0
    const-string v0, "utdid"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v6, v4, Laaq;->a:Laar;

    const-string v0, "utdid"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Laar;->q:Ljava/lang/String;

    :cond_1
    invoke-static {v3}, Laak;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {v3}, Laak;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->a:Ljava/lang/String;

    :cond_2
    invoke-static {v3}, Laak;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {v3}, Laak;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->b:Ljava/lang/String;

    :cond_3
    invoke-static {v3}, Laak;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {v3}, Laak;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->c:Ljava/lang/String;

    :cond_4
    invoke-static {}, Laak;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {}, Laak;->f()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->d:Ljava/lang/String;

    :cond_5
    invoke-static {}, Laak;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {}, Laak;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->e:Ljava/lang/String;

    :cond_6
    invoke-static {}, Laak;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {}, Laak;->j()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->f:Ljava/lang/String;

    :cond_7
    invoke-static {}, Laak;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {}, Laak;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->g:Ljava/lang/String;

    :cond_8
    invoke-static {}, Laak;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {}, Laak;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->h:Ljava/lang/String;

    :cond_9
    invoke-static {v3}, Laak;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {v3}, Laak;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->i:Ljava/lang/String;

    :cond_a
    invoke-static {}, Laak;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {}, Laak;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->j:Ljava/lang/String;

    :cond_b
    invoke-static {}, Laak;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {}, Laak;->i()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->k:Ljava/lang/String;

    :cond_c
    invoke-static {}, Laak;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {}, Laak;->c()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->l:Ljava/lang/String;

    :cond_d
    invoke-static {}, Laak;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {}, Laak;->k()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->m:Ljava/lang/String;

    :cond_e
    invoke-static {}, Laak;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {}, Laak;->d()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->n:Ljava/lang/String;

    :cond_f
    invoke-static {v3}, Laak;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-static {v3}, Laak;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laar;->r:Ljava/lang/String;

    :cond_10
    invoke-static {v3}, Laaq;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_14

    const-string v0, "apdtk"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v5, v4, Laaq;->a:Laar;

    const-string v0, "apdtk"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Laar;->u:Ljava/lang/String;

    :cond_11
    const-string v0, "deviceId"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v5, v4, Laaq;->a:Laar;

    const-string v0, "deviceId"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Laar;->t:Ljava/lang/String;

    :cond_12
    const-string v0, "time"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v5, v4, Laaq;->a:Laar;

    const-string v0, "time"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Laar;->o:Ljava/lang/String;

    :cond_13
    const-string v0, "rule"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v5, v4, Laaq;->a:Laar;

    const-string v0, "rule"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Laar;->v:Ljava/lang/String;

    :cond_14
    invoke-virtual {v4}, Laaq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-virtual {v4}, Laaq;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Laar;->s:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :cond_15
    :goto_0
    :try_start_2
    iget-object v5, p0, Laao;->a:Landroid/content/Context;

    sget-object v6, Laan;->a:Ljava/util/Map;

    if-eqz v6, :cond_22

    invoke-virtual {v4}, Laaq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v4}, Laaq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    move v0, v1

    :goto_1
    if-nez v0, :cond_1d

    invoke-virtual {v4}, Laaq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v4}, Laaq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    move v0, v1

    :goto_2
    if-nez v0, :cond_1d

    move v0, v2

    :goto_3
    invoke-static {v6}, Laaq;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_22

    if-nez v0, :cond_16

    const-string v0, "apdid"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "time"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "apdid"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "time"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Laaq;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Laaq;->b(Ljava/lang/String;)V

    :cond_16
    const-string v0, "checkcode"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4}, Laaq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v1, 0x0

    move-object v3, v1

    :goto_4
    invoke-virtual {v4}, Laaq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Laaq;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Ld;->e(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1f

    iget-object v7, v4, Laaq;->a:Laar;

    iget-object v7, v7, Laar;->t:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x20

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_22

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_17
    move v0, v2

    :goto_6
    if-eqz v0, :cond_22

    const-string v0, "apdid"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 69
    :goto_7
    return-void

    .line 57
    :cond_18
    :try_start_3
    invoke-virtual {v4}, Laaq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v4, Laaq;->a:Laar;

    invoke-virtual {v4}, Laaq;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Laar;->s:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Laat;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Laaq;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 60
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v0, p0, Laao;->b:Ljava/util/Map;

    const-string v4, "tid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Laao;->b:Ljava/util/Map;

    const-string v4, "tid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_19

    .line 63
    iget-object v0, p0, Laao;->b:Ljava/util/Map;

    const-string v4, "tid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_19
    iget-object v0, p0, Laao;->b:Ljava/util/Map;

    const-string v4, "utdid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Laao;->b:Ljava/util/Map;

    const-string v4, "utdid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_1a

    .line 65
    iget-object v0, p0, Laao;->b:Ljava/util/Map;

    const-string v4, "utdid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1a
    invoke-static {v1}, Laat;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {v3}, Laat;->a(Ljava/util/List;)V

    goto/16 :goto_7

    :cond_1b
    move v0, v2

    .line 59
    goto/16 :goto_1

    :cond_1c
    move v0, v2

    goto/16 :goto_2

    :cond_1d
    move v0, v1

    goto/16 :goto_3

    :cond_1e
    :try_start_5
    invoke-static {v1}, Ld;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_4

    :cond_1f
    invoke-static {v7}, Ld;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v4, Laaq;->a:Laar;

    iget-object v1, v1, Laar;->t:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x20

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_5

    :cond_20
    move v1, v2

    goto/16 :goto_5

    :cond_21
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_6

    :cond_22
    invoke-virtual {v4, v5}, Laaq;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_7
.end method
