.class public final Ldua;
.super Ldcj;
.source "TimelineSplitterProcessor.java"


# instance fields
.field private a:Leqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leqx",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Leqx;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leqx",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ldcj;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Ldua;->b:Ljava/util/Calendar;

    .line 23
    iput-object p1, p0, Ldua;->a:Leqx;

    .line 24
    return-void
.end method

.method private static a(J)Ljava/util/Calendar;
    .locals 2
    .parameter

    .prologue
    .line 54
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x6

    const/4 v3, 0x1

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 30
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->k()Lcom/wandoujia/api/proto/PublisherTimeDetail;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->k()Lcom/wandoujia/api/proto/PublisherTimeDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/PublisherTimeDetail;->create_time:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->k()Lcom/wandoujia/api/proto/PublisherTimeDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/PublisherTimeDetail;->create_time:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 33
    iget-object v2, p0, Ldua;->b:Ljava/util/Calendar;

    if-nez v2, :cond_1

    invoke-static {v6, v7}, Ldua;->a(J)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Ldua;->b:Ljava/util/Calendar;

    move v2, v3

    :goto_1
    if-nez v2, :cond_0

    .line 34
    new-instance v2, Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v5, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    invoke-direct {v2, v5}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    sget-object v5, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->TIME_SPLITTER_CARD:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v2, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v2

    new-instance v5, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v5, v2}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {v6, v7}, Ldua;->a(J)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Ldua;->b:Ljava/util/Calendar;

    .line 38
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_1
    invoke-static {v6, v7}, Ldua;->a(J)Ljava/util/Calendar;

    move-result-object v2

    iget-object v5, p0, Ldua;->b:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v5, v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 40
    :cond_3
    iget-object v0, p0, Ldua;->a:Leqx;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldua;->a:Leqx;

    invoke-interface {v0, v1}, Leqx;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ldua;->b:Ljava/util/Calendar;

    .line 69
    iget-object v0, p0, Ldua;->a:Leqx;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Ldua;->a:Leqx;

    invoke-interface {v0}, Leqx;->a()V

    .line 72
    :cond_0
    return-void
.end method
