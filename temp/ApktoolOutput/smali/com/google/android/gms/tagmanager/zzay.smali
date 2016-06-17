.class public final Lcom/google/android/gms/tagmanager/zzay;
.super Lbmi;


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzad;->zzbM:Lcom/google/android/gms/internal/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzad;->toString()Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzdw:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzay;->b:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzfu:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzay;->c:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzfy:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzay;->d:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzeR:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzay;->e:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzay$zza;Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzay$zza;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lbmk;->a:[I

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzay$zza;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    :try_start_0
    invoke-static {p0}, Ld;->l(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lbml;->b()V

    goto :goto_0

    :pswitch_1
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\\"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_0
    move-object p0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzay$zza;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzay$zza;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzay;->a(Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzay$zza;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lbjs;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbjs;",
            ">;)",
            "Lbjs;"
        }
    .end annotation

    const/4 v6, 0x0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzay;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjs;

    if-nez v0, :cond_0

    invoke-static {}, Lbne;->a()Lbjs;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/tagmanager/zzay;->c:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbjs;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lbne;->a(Lbjs;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    sget-object v1, Lcom/google/android/gms/tagmanager/zzay;->d:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbjs;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lbne;->a(Lbjs;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_2
    sget-object v5, Lcom/google/android/gms/tagmanager/zzay$zza;->zzaMa:Lcom/google/android/gms/tagmanager/zzay$zza;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzay;->e:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbjs;

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    invoke-static {v1}, Lbne;->a(Lbjs;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "url"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v1, Lcom/google/android/gms/tagmanager/zzay$zza;->zzaMb:Lcom/google/android/gms/tagmanager/zzay$zza;

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lbjs;->a:I

    packed-switch v5, :pswitch_data_0

    invoke-static {v0}, Lbne;->a(Lbjs;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v4, v1}, Lcom/google/android/gms/tagmanager/zzay;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzay$zza;Ljava/util/Set;)V

    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbne;->a(Ljava/lang/Object;)Lbjs;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, ""

    move-object v2, v1

    goto :goto_1

    :cond_3
    const-string v1, "="

    move-object v3, v1

    goto :goto_2

    :cond_4
    const-string v4, "backslash"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v4, Lcom/google/android/gms/tagmanager/zzay$zza;->zzaMc:Lcom/google/android/gms/tagmanager/zzay$zza;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v2}, Lcom/google/android/gms/tagmanager/zzay;->a(Ljava/util/Set;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/google/android/gms/tagmanager/zzay;->a(Ljava/util/Set;Ljava/lang/String;)V

    const/16 v5, 0x5c

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {}, Lbml;->a()V

    invoke-static {}, Lbne;->a()Lbjs;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_0
    const/4 v3, 0x1

    iget-object v5, v0, Lbjs;->c:[Lbjs;

    array-length v8, v5

    move v0, v6

    :goto_4
    if-ge v0, v8, :cond_1

    aget-object v9, v5, v0

    if-nez v3, :cond_6

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-static {v9}, Lbne;->a(Lbjs;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v4, v1}, Lcom/google/android/gms/tagmanager/zzay;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzay$zza;Ljava/util/Set;)V

    add-int/lit8 v0, v0, 0x1

    move v3, v6

    goto :goto_4

    :pswitch_1
    move v5, v6

    :goto_5
    iget-object v6, v0, Lbjs;->d:[Lbjs;

    array-length v6, v6

    if-ge v5, v6, :cond_1

    if-lez v5, :cond_7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v6, v0, Lbjs;->d:[Lbjs;

    aget-object v6, v6, v5

    invoke-static {v6}, Lbne;->a(Lbjs;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lbjs;->e:[Lbjs;

    aget-object v8, v8, v5

    invoke-static {v8}, Lbne;->a(Lbjs;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v4, v1}, Lcom/google/android/gms/tagmanager/zzay;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzay$zza;Ljava/util/Set;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8, v4, v1}, Lcom/google/android/gms/tagmanager/zzay;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzay$zza;Ljava/util/Set;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    move-object v1, v4

    move-object v4, v5

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
