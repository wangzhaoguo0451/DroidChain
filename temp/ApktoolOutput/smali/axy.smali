.class public final Laxy;
.super Lawp;

# interfaces
.implements Lbkx;


# static fields
.field private static a:Ljava/text/DecimalFormat;


# instance fields
.field private final b:Laws;

.field private final c:Ljava/lang/String;

.field private final e:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Laws;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Laxy;-><init>(Laws;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Laws;Ljava/lang/String;B)V
    .locals 1

    invoke-direct {p0, p1}, Lawp;-><init>(Laws;)V

    invoke-static {p2}, Lg;->i(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Laxy;->b:Laws;

    iput-object p2, p0, Laxy;->c:Ljava/lang/String;

    iget-object v0, p0, Laxy;->c:Ljava/lang/String;

    invoke-static {v0}, Laxy;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Laxy;->e:Landroid/net/Uri;

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Lg;->i(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "google-analytics.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static a(D)Ljava/lang/String;
    .locals 2

    sget-object v0, Laxy;->a:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.######"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Laxy;->a:Ljava/text/DecimalFormat;

    :cond_0
    sget-object v0, Laxy;->a:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Laxy;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "1"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static b(Lbko;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbko;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lbjw;

    invoke-virtual {p0, v0}, Lbko;->a(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lbjw;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lbjw;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_3

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_3
    instance-of v6, v1, Ljava/lang/Double;

    if-eqz v6, :cond_5

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Laxy;->a(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_1

    :cond_5
    instance-of v6, v1, Ljava/lang/Boolean;

    if-eqz v6, :cond_7

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v6, :cond_6

    const-string v1, "1"

    goto :goto_1

    :cond_6
    move-object v1, v2

    goto :goto_1

    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    const-class v0, Lbjx;

    invoke-virtual {p0, v0}, Lbko;->a(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lbjx;

    if-eqz v0, :cond_9

    const-string v1, "t"

    iget-object v4, v0, Lbjx;->a:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cid"

    iget-object v4, v0, Lbjx;->b:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    iget-object v4, v0, Lbjx;->c:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sc"

    iget-object v4, v0, Lbjx;->f:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sf"

    iget-wide v6, v0, Lbjx;->h:D

    invoke-static {v5, v1, v6, v7}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "ni"

    iget-boolean v4, v0, Lbjx;->g:Z

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Z)V

    const-string v1, "adid"

    iget-object v4, v0, Lbjx;->d:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ate"

    iget-boolean v0, v0, Lbjx;->e:Z

    invoke-static {v5, v1, v0}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Z)V

    :cond_9
    const-class v0, Lble;

    invoke-virtual {p0, v0}, Lbko;->a(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lble;

    if-eqz v0, :cond_a

    const-string v1, "cd"

    iget-object v4, v0, Lble;->a:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "a"

    iget v4, v0, Lble;->b:I

    int-to-double v6, v4

    invoke-static {v5, v1, v6, v7}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "dr"

    iget-object v0, v0, Lble;->c:Ljava/lang/String;

    invoke-static {v5, v1, v0}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-class v0, Lblc;

    invoke-virtual {p0, v0}, Lbko;->a(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lblc;

    if-eqz v0, :cond_b

    const-string v1, "ec"

    iget-object v4, v0, Lblc;->a:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ea"

    iget-object v4, v0, Lblc;->b:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "el"

    iget-object v4, v0, Lblc;->c:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ev"

    iget-wide v6, v0, Lblc;->d:J

    long-to-double v6, v6

    invoke-static {v5, v1, v6, v7}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;D)V

    :cond_b
    const-class v0, Lbkz;

    invoke-virtual {p0, v0}, Lbko;->a(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lbkz;

    if-eqz v0, :cond_c

    const-string v1, "cn"

    iget-object v4, v0, Lbkz;->a:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cs"

    iget-object v4, v0, Lbkz;->b:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cm"

    iget-object v4, v0, Lbkz;->c:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ck"

    iget-object v4, v0, Lbkz;->d:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cc"

    iget-object v4, v0, Lbkz;->e:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ci"

    iget-object v4, v0, Lbkz;->f:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "anid"

    iget-object v4, v0, Lbkz;->g:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gclid"

    iget-object v4, v0, Lbkz;->h:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dclid"

    iget-object v4, v0, Lbkz;->i:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aclid"

    iget-object v0, v0, Lbkz;->j:Ljava/lang/String;

    invoke-static {v5, v1, v0}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-class v0, Lbld;

    invoke-virtual {p0, v0}, Lbko;->a(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lbld;

    if-eqz v0, :cond_d

    const-string v1, "exd"

    iget-object v4, v0, Lbld;->a:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exf"

    iget-boolean v0, v0, Lbld;->b:Z

    invoke-static {v5, v1, v0}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Z)V

    :cond_d
    const-class v0, Lblf;

    invoke-virtual {p0, v0}, Lbko;->a(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lblf;

    if-eqz v0, :cond_e

    const-string v1, "sn"

    iget-object v4, v0, Lblf;->a:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sa"

    iget-object v4, v0, Lblf;->b:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "st"

    iget-object v0, v0, Lblf;->c:Ljava/lang/String;

    invoke-static {v5, v1, v0}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-class v0, Lblg;

    invoke-virtual {p0, v0}, Lbko;->a(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lblg;

    if-eqz v0, :cond_f

    const-string v1, "utv"

    iget-object v4, v0, Lblg;->a:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utt"

    iget-wide v6, v0, Lblg;->b:J

    long-to-double v6, v6

    invoke-static {v5, v1, v6, v7}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "utc"

    iget-object v4, v0, Lblg;->c:Ljava/lang/String;

    invoke-static {v5, v1, v4}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utl"

    iget-object v0, v0, Lblg;->d:Ljava/lang/String;

    invoke-static {v5, v1, v0}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-class v0, Lbju;

    invoke-virtual {p0, v0}, Lbko;->a(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lbju;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lbju;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v6, "cd"

    invoke-static {v6, v1}, Ld;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_11
    const-class v0, Lbjv;

    invoke-virtual {p0, v0}, Lbko;->a(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lbjv;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lbjv;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v6, "cm"

    invoke-static {v6, v1}, Ld;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Laxy;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_13
    const-class v0, Lblb;

    invoke-virtual {p0, v0}, Lbko;->a(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lblb;

    if-eqz v0, :cond_1a

    iget-object v1, v0, Lblb;->d:Lavt;

    if-eqz v1, :cond_15

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "&"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_15
    iget-object v1, v0, Lblb;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lavu;

    const-string v6, "promo"

    invoke-static {v6, v2}, Ld;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lavu;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_16
    iget-object v1, v0, Lblb;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lavs;

    const-string v6, "pr"

    invoke-static {v6, v2}, Ld;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lavs;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    :cond_17
    iget-object v0, v0, Lblb;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v3

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v2, "il"

    invoke-static {v2, v4}, Ld;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavs;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "pi"

    invoke-static {v10, v2}, Ld;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lavs;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "nm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    :cond_1a
    const-class v0, Lbla;

    invoke-virtual {p0, v0}, Lbko;->a(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lbla;

    if-eqz v0, :cond_1b

    const-string v1, "ul"

    iget-object v2, v0, Lbla;->a:Ljava/lang/String;

    invoke-static {v5, v1, v2}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sd"

    iget v2, v0, Lbla;->b:I

    int-to-double v2, v2

    invoke-static {v5, v1, v2, v3}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "sr"

    iget v2, v0, Lbla;->c:I

    iget v3, v0, Lbla;->d:I

    invoke-static {v5, v1, v2, v3}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;II)V

    const-string v1, "vp"

    iget v2, v0, Lbla;->e:I

    iget v0, v0, Lbla;->f:I

    invoke-static {v5, v1, v2, v0}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;II)V

    :cond_1b
    const-class v0, Lbky;

    invoke-virtual {p0, v0}, Lbko;->a(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lbky;

    if-eqz v0, :cond_1c

    const-string v1, "an"

    iget-object v2, v0, Lbky;->a:Ljava/lang/String;

    invoke-static {v5, v1, v2}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aid"

    iget-object v2, v0, Lbky;->c:Ljava/lang/String;

    invoke-static {v5, v1, v2}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aiid"

    iget-object v2, v0, Lbky;->d:Ljava/lang/String;

    invoke-static {v5, v1, v2}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "av"

    iget-object v0, v0, Lbky;->b:Ljava/lang/String;

    invoke-static {v5, v1, v0}, Laxy;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-object v5
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Laxy;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(Lbko;)V
    .locals 9

    const/4 v7, 0x1

    invoke-static {p1}, Lg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lbko;->c:Z

    const-string v1, "Can\'t deliver not submitted measurement"

    invoke-static {v0, v1}, Lg;->b(ZLjava/lang/Object;)V

    const-string v0, "deliver should be called on worker thread"

    invoke-static {v0}, Lg;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbko;->a()Lbko;

    move-result-object v1

    const-class v0, Lbjx;

    invoke-virtual {v1, v0}, Lbko;->b(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lbjx;

    iget-object v0, v3, Lbjx;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->a()Lawc;

    move-result-object v0

    invoke-static {v1}, Laxy;->b(Lbko;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "Ignoring measurement without type"

    invoke-virtual {v0, v1, v2}, Lawc;->a(Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, v3, Lbjx;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->a()Lawc;

    move-result-object v0

    invoke-static {v1}, Laxy;->b(Lbko;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "Ignoring measurement without client id"

    invoke-virtual {v0, v1, v2}, Lawc;->a(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laxy;->b:Laws;

    invoke-virtual {v0}, Laws;->d()Lavj;

    iget-wide v4, v3, Lbjx;->h:D

    iget-object v0, v3, Lbjx;->b:Ljava/lang/String;

    invoke-static {v4, v5, v0}, Lawi;->a(DLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Sampling enabled. Hit sampled out. sampling rate"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Laxy;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Laxy;->b(Lbko;)Ljava/util/Map;

    move-result-object v8

    const-string v0, "v"

    const-string v1, "1"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_v"

    sget-object v1, Lawr;->b:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tid"

    iget-object v1, p0, Laxy;->c:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Laxy;->b:Laws;

    invoke-virtual {v0}, Laws;->d()Lavj;

    move-result-object v0

    iget-boolean v0, v0, Lavj;->b:Z

    if-eqz v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dry run is enabled. GoogleAnalytics would have sent"

    invoke-virtual {p0, v1, v0}, Laxy;->c(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uid"

    iget-object v1, v3, Lbjx;->c:Ljava/lang/String;

    invoke-static {v6, v0, v1}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lbky;

    invoke-virtual {p1, v0}, Lbko;->a(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lbky;

    if-eqz v0, :cond_6

    const-string v1, "an"

    iget-object v2, v0, Lbky;->a:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aid"

    iget-object v2, v0, Lbky;->c:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "av"

    iget-object v2, v0, Lbky;->b:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aiid"

    iget-object v0, v0, Lbky;->d:Ljava/lang/String;

    invoke-static {v6, v1, v0}, Lawi;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v0, Lawv;

    iget-object v1, v3, Lbjx;->b:Ljava/lang/String;

    iget-object v2, p0, Laxy;->c:Ljava/lang/String;

    iget-object v3, v3, Lbjx;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v7

    :goto_2
    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lawv;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    iget-object v1, p0, Lawp;->d:Laws;

    invoke-virtual {v1}, Laws;->c()Lawk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lawk;->a(Lawv;)J

    move-result-wide v0

    const-string v2, "_s"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lavy;

    iget-object v0, p0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->a()Lawc;

    move-result-object v2

    iget-wide v4, p1, Lbko;->d:J

    move-object v3, v8

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lavy;-><init>(Lawp;Ljava/util/Map;JZ)V

    iget-object v0, p0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->c()Lawk;

    move-result-object v0

    invoke-virtual {v0, v1}, Lawk;->a(Lavy;)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method
