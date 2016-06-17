.class public final Lbne;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/Boolean;

.field private static c:Lbjs;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v6, v7}, Lcom/google/android/gms/tagmanager/zzde;->zzT(J)Lcom/google/android/gms/tagmanager/zzde;

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbne;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lbne;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lbne;->a:Ljava/lang/String;

    invoke-static {v0}, Lbne;->a(Ljava/lang/Object;)Lbjs;

    move-result-object v0

    sput-object v0, Lbne;->c:Lbjs;

    return-void
.end method

.method public static a()Lbjs;
    .locals 1

    sget-object v0, Lbne;->c:Lbjs;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lbjs;
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Lbjs;

    invoke-direct {v4}, Lbjs;-><init>()V

    instance-of v0, p0, Lbjs;

    if-eqz v0, :cond_0

    check-cast p0, Lbjs;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iput v3, v4, Lbjs;->a:I

    check-cast p0, Ljava/lang/String;

    iput-object p0, v4, Lbjs;->b:Ljava/lang/String;

    :goto_1
    iput-boolean v2, v4, Lbjs;->l:Z

    move-object p0, v4

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    iput v0, v4, Lbjs;->a:I

    check-cast p0, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbne;->a(Ljava/lang/Object;)Lbjs;

    move-result-object v7

    sget-object v0, Lbne;->c:Lbjs;

    if-ne v7, v0, :cond_2

    sget-object p0, Lbne;->c:Lbjs;

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-boolean v0, v7, Lbjs;->l:Z

    if-eqz v0, :cond_4

    :cond_3
    move v0, v3

    :goto_3
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    new-array v0, v2, [Lbjs;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbjs;

    iput-object v0, v4, Lbjs;->c:[Lbjs;

    move v2, v1

    goto :goto_1

    :cond_6
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    iput v0, v4, Lbjs;->a:I

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lbne;->a(Ljava/lang/Object;)Lbjs;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbne;->a(Ljava/lang/Object;)Lbjs;

    move-result-object v9

    sget-object v0, Lbne;->c:Lbjs;

    if-eq v8, v0, :cond_7

    sget-object v0, Lbne;->c:Lbjs;

    if-ne v9, v0, :cond_8

    :cond_7
    sget-object p0, Lbne;->c:Lbjs;

    goto/16 :goto_0

    :cond_8
    if-nez v1, :cond_9

    iget-boolean v0, v8, Lbjs;->l:Z

    if-nez v0, :cond_9

    iget-boolean v0, v9, Lbjs;->l:Z

    if-eqz v0, :cond_a

    :cond_9
    move v0, v3

    :goto_5
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    new-array v0, v2, [Lbjs;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbjs;

    iput-object v0, v4, Lbjs;->d:[Lbjs;

    new-array v0, v2, [Lbjs;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbjs;

    iput-object v0, v4, Lbjs;->e:[Lbjs;

    move v2, v1

    goto/16 :goto_1

    :cond_c
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_d

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_d

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzde;

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzde;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzde;->zzzF()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    move v0, v3

    :goto_6
    if-eqz v0, :cond_f

    iput v3, v4, Lbjs;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lbjs;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    move v0, v2

    goto :goto_6

    :cond_f
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_10

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_10

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_10

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_10

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzde;

    if-eqz v0, :cond_11

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzde;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzde;->zzzG()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_7
    if-eqz v3, :cond_13

    const/4 v0, 0x6

    iput v0, v4, Lbjs;->a:I

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_12

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_8
    iput-wide v0, v4, Lbjs;->h:J

    goto/16 :goto_1

    :cond_11
    move v3, v2

    goto :goto_7

    :cond_12
    invoke-static {}, Lbml;->a()V

    const-wide/16 v0, 0x0

    goto :goto_8

    :cond_13
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    const/16 v0, 0x8

    iput v0, v4, Lbjs;->a:I

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v4, Lbjs;->i:Z

    goto/16 :goto_1

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Converting to Value from unknown object type: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_15

    const-string v0, "null"

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbml;->a()V

    sget-object p0, Lbne;->c:Lbjs;

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public static a(Lbjs;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lbne;->c(Lbjs;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbne;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lbjs;)Ljava/lang/Boolean;
    .locals 2

    invoke-static {p0}, Lbne;->c(Lbjs;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lbne;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v0, Lbne;->b:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lbne;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lbjs;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget v2, p0, Lbjs;->a:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to convert a value of type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lbjs;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lbml;->a()V

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lbjs;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lbjs;->c:[Lbjs;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lbjs;->c:[Lbjs;

    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    invoke-static {v5}, Lbne;->c(Lbjs;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lbjs;->d:[Lbjs;

    array-length v2, v2

    iget-object v3, p0, Lbjs;->e:[Lbjs;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Converting an invalid value to object: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbjs;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbml;->a()V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lbjs;->e:[Lbjs;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    :goto_2
    iget-object v3, p0, Lbjs;->d:[Lbjs;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lbjs;->d:[Lbjs;

    aget-object v3, v3, v0

    invoke-static {v3}, Lbne;->c(Lbjs;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lbjs;->e:[Lbjs;

    aget-object v4, v4, v0

    invoke-static {v4}, Lbne;->c(Lbjs;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v3, :cond_4

    if-nez v4, :cond_5

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lbml;->a()V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lbml;->a()V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_5
    iget-wide v0, p0, Lbjs;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lbjs;->j:[Lbjs;

    array-length v4, v3

    :goto_3
    if-ge v0, v4, :cond_8

    aget-object v5, v3, v0

    invoke-static {v5}, Lbne;->a(Lbjs;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lbne;->a:Ljava/lang/String;

    if-ne v5, v6, :cond_7

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    iget-boolean v0, p0, Lbjs;->i:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
