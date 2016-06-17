.class public final Lcvv;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private a:Lcwz;

.field private b:Lcom/wandoujia/gson/LongSerializationPolicy;

.field private c:Lcvn;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcvw",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcwi;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcwi;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcwz;->a:Lcwz;

    iput-object v0, p0, Lcvv;->a:Lcwz;

    .line 70
    sget-object v0, Lcom/wandoujia/gson/LongSerializationPolicy;->DEFAULT:Lcom/wandoujia/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcvv;->b:Lcom/wandoujia/gson/LongSerializationPolicy;

    .line 71
    sget-object v0, Lcom/wandoujia/gson/FieldNamingPolicy;->IDENTITY:Lcom/wandoujia/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcvv;->c:Lcvn;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcvv;->d:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcvv;->e:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcvv;->f:Ljava/util/List;

    .line 79
    iput v1, p0, Lcvv;->g:I

    .line 80
    iput v1, p0, Lcvv;->h:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcvv;->i:Z

    .line 94
    return-void
.end method


# virtual methods
.method public final a()Lcvo;
    .locals 7

    .prologue
    const/4 v2, 0x2

    .line 539
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 540
    iget-object v0, p0, Lcvv;->e:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 542
    iget-object v0, p0, Lcvv;->f:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 543
    iget v0, p0, Lcvv;->g:I

    iget v1, p0, Lcvv;->h:I

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    new-instance v2, Lcvm;

    invoke-direct {v2, v0, v1}, Lcvm;-><init>(II)V

    const-class v0, Ljava/util/Date;

    invoke-static {v0}, Lczv;->get(Ljava/lang/Class;)Lczv;

    move-result-object v0

    invoke-static {v0, v2}, Lcwf;->a(Lczv;Ljava/lang/Object;)Lcwi;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/sql/Timestamp;

    invoke-static {v0}, Lczv;->get(Ljava/lang/Class;)Lczv;

    move-result-object v0

    invoke-static {v0, v2}, Lcwf;->a(Lczv;Ljava/lang/Object;)Lcwi;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/sql/Date;

    invoke-static {v0}, Lczv;->get(Ljava/lang/Class;)Lczv;

    move-result-object v0

    invoke-static {v0, v2}, Lcwf;->a(Lczv;Ljava/lang/Object;)Lcwi;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_0
    new-instance v0, Lcvo;

    iget-object v1, p0, Lcvv;->a:Lcwz;

    iget-object v2, p0, Lcvv;->c:Lcvn;

    iget-object v3, p0, Lcvv;->d:Ljava/util/Map;

    iget-boolean v4, p0, Lcvv;->i:Z

    iget-object v5, p0, Lcvv;->b:Lcom/wandoujia/gson/LongSerializationPolicy;

    invoke-direct/range {v0 .. v6}, Lcvo;-><init>(Lcwz;Lcvn;Ljava/util/Map;ZLcom/wandoujia/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcvv;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 448
    invoke-static {v1}, Lg;->c(Z)V

    .line 452
    instance-of v0, p2, Lcvw;

    if-eqz v0, :cond_0

    .line 453
    iget-object v3, p0, Lcvv;->d:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcvw;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_0
    invoke-static {p1}, Lczv;->get(Ljava/lang/reflect/Type;)Lczv;

    move-result-object v3

    .line 457
    iget-object v4, p0, Lcvv;->e:Ljava/util/List;

    invoke-virtual {v3}, Lczv;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v3}, Lczv;->getRawType()Ljava/lang/Class;

    move-result-object v5

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_0
    new-instance v1, Lcwg;

    invoke-direct {v1, p2, v3, v0, v2}, Lcwg;-><init>(Ljava/lang/Object;Lczv;ZB)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    instance-of v0, p2, Lcwh;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcvv;->e:Ljava/util/List;

    invoke-static {p1}, Lczv;->get(Ljava/lang/reflect/Type;)Lczv;

    move-result-object v1

    check-cast p2, Lcwh;

    invoke-static {v1, p2}, Lcym;->a(Lczv;Lcwh;)Lcwi;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_1
    return-object p0

    :cond_2
    move v0, v2

    .line 457
    goto :goto_0
.end method
