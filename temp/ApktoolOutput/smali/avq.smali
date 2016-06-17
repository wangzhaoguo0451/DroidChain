.class final Lavq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/Map;

.field private synthetic b:Z

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:J

.field private synthetic e:Z

.field private synthetic f:Z

.field private synthetic g:Ljava/lang/String;

.field private synthetic h:Lavp;


# direct methods
.method constructor <init>(Lavp;Ljava/util/Map;ZLjava/lang/String;JZZLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lavq;->h:Lavp;

    iput-object p2, p0, Lavq;->a:Ljava/util/Map;

    iput-boolean p3, p0, Lavq;->b:Z

    iput-object p4, p0, Lavq;->c:Ljava/lang/String;

    iput-wide p5, p0, Lavq;->d:J

    iput-boolean p7, p0, Lavq;->e:Z

    iput-boolean p8, p0, Lavq;->f:Z

    iput-object p9, p0, Lavq;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lavq;->h:Lavp;

    iget-object v0, v0, Lavp;->c:Lavr;

    invoke-virtual {v0}, Lavr;->b()Z

    iget-object v0, p0, Lavq;->a:Ljava/util/Map;

    const-string v2, "cid"

    iget-object v3, p0, Lavq;->h:Lavp;

    iget-object v3, v3, Lawp;->d:Laws;

    invoke-virtual {v3}, Laws;->d()Lavj;

    move-result-object v3

    const-string v4, "getClientId can not be called from the main thread"

    invoke-static {v4}, Lg;->k(Ljava/lang/String;)V

    iget-object v3, v3, Laxx;->c:Laws;

    invoke-virtual {v3}, Laws;->g()Laxj;

    move-result-object v3

    invoke-virtual {v3}, Laxj;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lawi;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lavq;->a:Ljava/util/Map;

    const-string v2, "sf"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lawi;->b(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v0, p0, Lavq;->a:Ljava/util/Map;

    const-string v4, "cid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lawi;->a(DLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavq;->h:Lavp;

    const-string v1, "Sampling enabled. Hit sampled out. sample rate"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lavp;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lavq;->h:Lavp;

    iget-object v0, v0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->f()Lavw;

    move-result-object v0

    iget-boolean v2, p0, Lavq;->b:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lavq;->a:Ljava/util/Map;

    const-string v3, "ate"

    invoke-virtual {v0}, Lavw;->b()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Z)V

    iget-object v2, p0, Lavq;->a:Ljava/util/Map;

    const-string v3, "adid"

    invoke-virtual {v0}, Lavw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lavq;->h:Lavp;

    iget-object v0, v0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->h()Laxd;

    move-result-object v0

    invoke-virtual {v0}, Laxd;->b()Lbky;

    move-result-object v0

    iget-object v2, p0, Lavq;->a:Ljava/util/Map;

    const-string v3, "an"

    iget-object v4, v0, Lbky;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lavq;->a:Ljava/util/Map;

    const-string v3, "av"

    iget-object v4, v0, Lbky;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lavq;->a:Ljava/util/Map;

    const-string v3, "aid"

    iget-object v4, v0, Lbky;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lavq;->a:Ljava/util/Map;

    const-string v3, "aiid"

    iget-object v0, v0, Lbky;->d:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lavq;->a:Ljava/util/Map;

    const-string v2, "v"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lavq;->a:Ljava/util/Map;

    const-string v2, "_v"

    sget-object v3, Lawr;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lavq;->a:Ljava/util/Map;

    const-string v2, "ul"

    iget-object v3, p0, Lavq;->h:Lavp;

    iget-object v3, v3, Lawp;->d:Laws;

    iget-object v3, v3, Laws;->h:Laxr;

    invoke-virtual {v3}, Laxr;->b()Lbla;

    move-result-object v3

    iget-object v3, v3, Lbla;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lavq;->a:Ljava/util/Map;

    const-string v2, "sr"

    iget-object v3, p0, Lavq;->h:Lavp;

    iget-object v3, v3, Lawp;->d:Laws;

    iget-object v3, v3, Laws;->h:Laxr;

    invoke-virtual {v3}, Laxr;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lavq;->c:Ljava/lang/String;

    const-string v2, "transaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lavq;->c:Ljava/lang/String;

    const-string v2, "item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v9

    :goto_2
    if-nez v0, :cond_4

    iget-object v0, p0, Lavq;->h:Lavp;

    iget-object v0, v0, Lavp;->b:Lawa;

    invoke-virtual {v0}, Lawa;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lavq;->h:Lavp;

    iget-object v0, v0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->a()Lawc;

    move-result-object v0

    iget-object v1, p0, Lavq;->a:Ljava/util/Map;

    const-string v2, "Too many hits sent too quickly, rate limiting invoked"

    invoke-virtual {v0, v1, v2}, Lawc;->a(Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lavq;->a:Ljava/util/Map;

    const-string v2, "ate"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lavq;->a:Ljava/util/Map;

    const-string v2, "adid"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lavq;->a:Ljava/util/Map;

    const-string v2, "ht"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lawi;->c(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-nez v0, :cond_5

    iget-wide v4, p0, Lavq;->d:J

    :cond_5
    iget-boolean v0, p0, Lavq;->e:Z

    if-eqz v0, :cond_6

    new-instance v1, Lavy;

    iget-object v2, p0, Lavq;->h:Lavp;

    iget-object v3, p0, Lavq;->a:Ljava/util/Map;

    iget-boolean v6, p0, Lavq;->f:Z

    invoke-direct/range {v1 .. v6}, Lavy;-><init>(Lawp;Ljava/util/Map;JZ)V

    iget-object v0, p0, Lavq;->h:Lavp;

    iget-object v0, v0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->a()Lawc;

    move-result-object v0

    const-string v2, "Dry run enabled. Would have sent hit"

    invoke-virtual {v0, v2, v1}, Lawc;->c(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lavq;->a:Ljava/util/Map;

    const-string v2, "cid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uid"

    iget-object v2, p0, Lavq;->a:Ljava/util/Map;

    invoke-static {v12, v0, v2}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "an"

    iget-object v2, p0, Lavq;->a:Ljava/util/Map;

    invoke-static {v12, v0, v2}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "aid"

    iget-object v2, p0, Lavq;->a:Ljava/util/Map;

    invoke-static {v12, v0, v2}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "av"

    iget-object v2, p0, Lavq;->a:Ljava/util/Map;

    invoke-static {v12, v0, v2}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "aiid"

    iget-object v2, p0, Lavq;->a:Ljava/util/Map;

    invoke-static {v12, v0, v2}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v6, Lawv;

    iget-object v8, p0, Lavq;->g:Ljava/lang/String;

    iget-object v0, p0, Lavq;->a:Ljava/util/Map;

    const-string v2, "adid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_3
    invoke-direct/range {v6 .. v12}, Lawv;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    iget-object v0, p0, Lavq;->h:Lavp;

    iget-object v0, v0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->c()Lawk;

    move-result-object v0

    invoke-virtual {v0, v6}, Lawk;->a(Lawv;)J

    move-result-wide v0

    iget-object v2, p0, Lavq;->a:Ljava/util/Map;

    const-string v3, "_s"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lavy;

    iget-object v2, p0, Lavq;->h:Lavp;

    iget-object v3, p0, Lavq;->a:Ljava/util/Map;

    iget-boolean v6, p0, Lavq;->f:Z

    invoke-direct/range {v1 .. v6}, Lavy;-><init>(Lawp;Ljava/util/Map;JZ)V

    iget-object v0, p0, Lavq;->h:Lavp;

    iget-object v0, v0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->c()Lawk;

    move-result-object v0

    invoke-virtual {v0, v1}, Lawk;->a(Lavy;)V

    goto/16 :goto_0

    :cond_7
    move v9, v1

    goto :goto_3
.end method
