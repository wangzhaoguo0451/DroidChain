.class public final Lcvo;
.super Ljava/lang/Object;
.source "Gson.java"


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lczv",
            "<*>;",
            "Lcvu",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lczv",
            "<*>;",
            "Lcwh",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcwi;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcwm;

.field private final e:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 174
    sget-object v1, Lcwz;->a:Lcwz;

    sget-object v2, Lcom/wandoujia/gson/FieldNamingPolicy;->IDENTITY:Lcom/wandoujia/gson/FieldNamingPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v5, Lcom/wandoujia/gson/LongSerializationPolicy;->DEFAULT:Lcom/wandoujia/gson/LongSerializationPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcvo;-><init>(Lcwz;Lcvn;Ljava/util/Map;ZLcom/wandoujia/gson/LongSerializationPolicy;Ljava/util/List;)V

    .line 178
    return-void
.end method

.method constructor <init>(Lcwz;Lcvn;Ljava/util/Map;ZLcom/wandoujia/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcwz;",
            "Lcvn;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcvw",
            "<*>;>;Z",
            "Lcom/wandoujia/gson/LongSerializationPolicy;",
            "Ljava/util/List",
            "<",
            "Lcwi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcvo;->a:Ljava/lang/ThreadLocal;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcvo;->b:Ljava/util/Map;

    .line 123
    new-instance v0, Lcvp;

    invoke-direct {v0}, Lcvp;-><init>()V

    .line 130
    new-instance v0, Lcvq;

    invoke-direct {v0}, Lcvq;-><init>()V

    .line 186
    new-instance v0, Lcwm;

    invoke-direct {v0, p3}, Lcwm;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcvo;->d:Lcwm;

    .line 187
    iput-boolean p4, p0, Lcvo;->e:Z

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    sget-object v0, Lcym;->x:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcya;->a:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    sget-object v0, Lcym;->m:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcym;->g:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcym;->d:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcym;->e:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcym;->f:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    sget-object v0, Lcom/wandoujia/gson/LongSerializationPolicy;->DEFAULT:Lcom/wandoujia/gson/LongSerializationPolicy;

    if-ne p5, v0, :cond_0

    sget-object v0, Lcym;->h:Lcwh;

    :goto_0
    invoke-static {v2, v3, v0}, Lcym;->a(Ljava/lang/Class;Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    new-instance v3, Lcvr;

    invoke-direct {v3}, Lcvr;-><init>()V

    invoke-static {v0, v2, v3}, Lcym;->a(Ljava/lang/Class;Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    new-instance v3, Lcvs;

    invoke-direct {v3}, Lcvs;-><init>()V

    invoke-static {v0, v2, v3}, Lcym;->a(Ljava/lang/Class;Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcym;->i:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcym;->j:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcym;->n:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcym;->o:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    const-class v0, Ljava/math/BigDecimal;

    sget-object v2, Lcym;->k:Lcwh;

    invoke-static {v0, v2}, Lcym;->a(Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-class v0, Ljava/math/BigInteger;

    sget-object v2, Lcym;->l:Lcwh;

    invoke-static {v0, v2}, Lcym;->a(Ljava/lang/Class;Lcwh;)Lcwi;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcym;->p:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcym;->q:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcym;->s:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcym;->v:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcym;->r:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcym;->b:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcxu;->a:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcym;->u:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcyj;->a:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcyh;->a:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcym;->t:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcxq;->a:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcym;->y:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcym;->a:Lcwi;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v0, Lcxs;

    iget-object v2, p0, Lcvo;->d:Lcwm;

    invoke-direct {v0, v2}, Lcxs;-><init>(Lcwm;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lcxy;

    iget-object v2, p0, Lcvo;->d:Lcwm;

    invoke-direct {v0, v2}, Lcxy;-><init>(Lcwm;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcyd;

    iget-object v2, p0, Lcvo;->d:Lcwm;

    invoke-direct {v0, v2, p2, p1}, Lcyd;-><init>(Lcwm;Lcvn;Lcwz;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcvo;->c:Ljava/util/List;

    .line 244
    return-void

    .line 210
    :cond_0
    new-instance v0, Lcvt;

    invoke-direct {v0}, Lcvt;-><init>()V

    goto/16 :goto_0
.end method

.method private static a(Ljava/io/Writer;)Lczy;
    .locals 2
    .parameter

    .prologue
    .line 638
    new-instance v0, Lczy;

    invoke-direct {v0, p0}, Lczy;-><init>(Ljava/io/Writer;)V

    .line 642
    const/4 v1, 0x0

    iput-boolean v1, v0, Lczy;->c:Z

    .line 646
    return-object v0
.end method

.method static synthetic a(D)V
    .locals 4
    .parameter

    .prologue
    .line 97
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Object;Lczw;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 775
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lczw;->f()Lcom/wandoujia/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/gson/stream/JsonToken;->END_DOCUMENT:Lcom/wandoujia/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    .line 776
    new-instance v0, Lcom/wandoujia/gson/JsonIOException;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/wandoujia/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/wandoujia/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 778
    :catch_0
    move-exception v0

    .line 779
    new-instance v1, Lcom/wandoujia/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/wandoujia/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 780
    :catch_1
    move-exception v0

    .line 781
    new-instance v1, Lcom/wandoujia/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/wandoujia/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 782
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcwi;Lczv;)Lcwh;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcwi;",
            "Lczv",
            "<TT;>;)",
            "Lcwh",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 422
    iget-object v1, p0, Lcvo;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwi;

    .line 423
    if-nez v1, :cond_1

    .line 424
    if-ne v0, p1, :cond_0

    .line 425
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 430
    :cond_1
    invoke-interface {v0, p0, p2}, Lcwi;->a(Lcvo;Lczv;)Lcwh;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    return-object v0

    .line 435
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GSON cannot serialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lczv;)Lcwh;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lczv",
            "<TT;>;)",
            "Lcwh",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcvo;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwh;

    .line 333
    if-eqz v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-object v0

    .line 337
    :cond_1
    iget-object v0, p0, Lcvo;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 338
    const/4 v1, 0x0

    .line 339
    if-nez v0, :cond_6

    .line 340
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 341
    iget-object v0, p0, Lcvo;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 342
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 346
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcvu;

    .line 347
    if-nez v0, :cond_0

    .line 352
    :try_start_0
    new-instance v3, Lcvu;

    invoke-direct {v3}, Lcvu;-><init>()V

    .line 353
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcvo;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwi;

    .line 356
    invoke-interface {v0, p0, p1}, Lcwi;->a(Lcvo;Lczv;)Lcwh;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_2

    .line 358
    iget-object v4, v3, Lcvu;->a:Lcwh;

    if-eqz v4, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    if-eqz v1, :cond_3

    .line 368
    iget-object v1, p0, Lcvo;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_3
    throw v0

    .line 358
    :cond_4
    :try_start_1
    iput-object v0, v3, Lcvu;->a:Lcwh;

    .line 359
    iget-object v3, p0, Lcvo;->b:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcvo;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 363
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GSON cannot handle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    move-object v2, v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/Class;)Lcwh;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcwh",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {p1}, Lczv;->get(Ljava/lang/Class;)Lczv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcvo;->a(Lczv;)Lcwh;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcvz;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcvz;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 841
    invoke-virtual {p0, p1, p2}, Lcvo;->a(Lcvz;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 842
    invoke-static {p2}, Lcxk;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcvz;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcvz;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 865
    if-nez p1, :cond_0

    .line 866
    const/4 v0, 0x0

    .line 868
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcxw;

    invoke-direct {v0, p1}, Lcxw;-><init>(Lcvz;)V

    invoke-virtual {p0, v0, p2}, Lcvo;->a(Lczw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lczw;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lczw;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 795
    .line 796
    iget-boolean v2, p1, Lczw;->b:Z

    .line 797
    iput-boolean v1, p1, Lczw;->b:Z

    .line 799
    :try_start_0
    invoke-virtual {p1}, Lczw;->f()Lcom/wandoujia/gson/stream/JsonToken;

    .line 800
    const/4 v1, 0x0

    .line 801
    invoke-static {p2}, Lczv;->get(Ljava/lang/reflect/Type;)Lczv;

    move-result-object v0

    .line 802
    invoke-virtual {p0, v0}, Lcvo;->a(Lczv;)Lcwh;

    move-result-object v0

    .line 803
    invoke-virtual {v0, p1}, Lcwh;->a(Lczw;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 820
    iput-boolean v2, p1, Lczw;->b:Z

    :goto_0
    return-object v0

    .line 805
    :catch_0
    move-exception v0

    .line 810
    if-eqz v1, :cond_0

    .line 811
    iput-boolean v2, p1, Lczw;->b:Z

    const/4 v0, 0x0

    goto :goto_0

    .line 813
    :cond_0
    :try_start_1
    new-instance v1, Lcom/wandoujia/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/wandoujia/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    :catchall_0
    move-exception v0

    iput-boolean v2, p1, Lczw;->b:Z

    throw v0

    .line 814
    :catch_1
    move-exception v0

    .line 815
    :try_start_2
    new-instance v1, Lcom/wandoujia/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/wandoujia/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 816
    :catch_2
    move-exception v0

    .line 818
    new-instance v1, Lcom/wandoujia/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/wandoujia/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 740
    new-instance v0, Lczw;

    invoke-direct {v0, p1}, Lczw;-><init>(Ljava/io/Reader;)V

    .line 741
    invoke-virtual {p0, v0, p2}, Lcvo;->a(Lczw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 742
    invoke-static {v1, v0}, Lcvo;->a(Ljava/lang/Object;Lczw;)V

    .line 743
    invoke-static {p2}, Lcxk;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 689
    invoke-virtual {p0, p1, p2}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 690
    invoke-static {p2}, Lcxk;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 713
    if-nez p1, :cond_0

    .line 714
    const/4 v0, 0x0

    .line 718
    :goto_0
    return-object v0

    .line 716
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 717
    new-instance v1, Lczw;

    invoke-direct {v1, v0}, Lczw;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v1, p2}, Lcvo;->a(Lczw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcvo;->a(Ljava/lang/Object;Lczw;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    .line 504
    if-nez p1, :cond_0

    .line 505
    sget-object v0, Lcwa;->a:Lcwa;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-static {v1}, Ld;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-static {v2}, Lcvo;->a(Ljava/io/Writer;)Lczy;

    move-result-object v2

    iget-boolean v3, v2, Lczy;->a:Z

    const/4 v4, 0x1

    iput-boolean v4, v2, Lczy;->a:Z

    iget-boolean v4, v2, Lczy;->b:Z

    iget-boolean v5, p0, Lcvo;->e:Z

    iput-boolean v5, v2, Lczy;->b:Z

    iget-boolean v5, v2, Lczy;->c:Z

    const/4 v6, 0x0

    iput-boolean v6, v2, Lczy;->c:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0, v2}, Ld;->a(Lcvz;Lczy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iput-boolean v3, v2, Lczy;->a:Z

    iput-boolean v4, v2, Lczy;->b:Z

    iput-boolean v5, v2, Lczy;->c:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    .line 505
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/wandoujia/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/wandoujia/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    iput-boolean v3, v2, Lczy;->a:Z

    iput-boolean v4, v2, Lczy;->b:Z

    iput-boolean v5, v2, Lczy;->c:Z

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 507
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 526
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 527
    :try_start_0
    invoke-static {v0}, Ld;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v1

    invoke-static {v1}, Lcvo;->a(Ljava/io/Writer;)Lczy;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lczy;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 527
    :catch_0
    move-exception v0

    new-instance v1, Lcom/wandoujia/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/wandoujia/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lczy;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 585
    invoke-static {p2}, Lczv;->get(Ljava/lang/reflect/Type;)Lczv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcvo;->a(Lczv;)Lcwh;

    move-result-object v0

    .line 586
    iget-boolean v1, p3, Lczy;->a:Z

    .line 587
    const/4 v2, 0x1

    iput-boolean v2, p3, Lczy;->a:Z

    .line 588
    iget-boolean v2, p3, Lczy;->b:Z

    .line 589
    iget-boolean v3, p0, Lcvo;->e:Z

    iput-boolean v3, p3, Lczy;->b:Z

    .line 590
    iget-boolean v3, p3, Lczy;->c:Z

    .line 591
    const/4 v4, 0x0

    iput-boolean v4, p3, Lczy;->c:Z

    .line 593
    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcwh;->a(Lczy;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    iput-boolean v1, p3, Lczy;->a:Z

    .line 598
    iput-boolean v2, p3, Lczy;->b:Z

    .line 599
    iput-boolean v3, p3, Lczy;->c:Z

    .line 600
    return-void

    .line 594
    :catch_0
    move-exception v0

    .line 595
    :try_start_1
    new-instance v4, Lcom/wandoujia/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/wandoujia/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    :catchall_0
    move-exception v0

    iput-boolean v1, p3, Lczy;->a:Z

    .line 598
    iput-boolean v2, p3, Lczy;->b:Z

    .line 599
    iput-boolean v3, p3, Lczy;->c:Z

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:falsefactories:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcvo;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcvo;->d:Lcwm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
