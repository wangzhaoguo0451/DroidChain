.class public final Lcyd;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcwi;


# instance fields
.field private final a:Lcwm;

.field private final b:Lcvn;

.field private final c:Lcwz;


# direct methods
.method public constructor <init>(Lcwm;Lcvn;Lcwz;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcyd;->a:Lcwm;

    .line 51
    iput-object p2, p0, Lcyd;->b:Lcvn;

    .line 52
    iput-object p3, p0, Lcyd;->c:Lcwz;

    .line 53
    return-void
.end method

.method private a(Lcvo;Lczv;Ljava/lang/Class;)Ljava/util/Map;
    .locals 14
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcvo;",
            "Lczv",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcyg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 103
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v9

    .line 129
    :goto_0
    return-object v1

    .line 107
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lczv;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 108
    :goto_1
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_5

    .line 109
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 110
    array-length v13, v12

    const/4 v1, 0x0

    move v10, v1

    :goto_2
    if-ge v10, v13, :cond_4

    aget-object v7, v12, v10

    .line 111
    const/4 v1, 0x1

    invoke-direct {p0, v7, v1}, Lcyd;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v3

    .line 112
    const/4 v1, 0x0

    invoke-direct {p0, v7, v1}, Lcyd;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v4

    .line 113
    if-nez v3, :cond_1

    if-eqz v4, :cond_3

    .line 114
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Lczv;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/wandoujia/gson/internal/$Gson$Types;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 118
    const-class v1, Lcwj;

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcwj;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcyd;->b:Lcvn;

    invoke-interface {v1, v7}, Lcvn;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v5}, Lczv;->get(Ljava/lang/reflect/Type;)Lczv;

    move-result-object v6

    invoke-virtual {v6}, Lczv;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcxk;->a(Ljava/lang/reflect/Type;)Z

    move-result v8

    new-instance v1, Lcye;

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lcye;-><init>(Ljava/lang/String;ZZLcvo;Lczv;Ljava/lang/reflect/Field;Z)V

    .line 120
    iget-object v2, v1, Lcyg;->a:Ljava/lang/String;

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyg;

    .line 121
    if-eqz v1, :cond_3

    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " declares multiple JSON fields named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcyg;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_2
    invoke-interface {v1}, Lcwj;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 110
    :cond_3
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_2

    .line 126
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lczv;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/wandoujia/gson/internal/$Gson$Types;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lczv;->get(Ljava/lang/reflect/Type;)Lczv;

    move-result-object p2

    .line 127
    invoke-virtual/range {p2 .. p2}, Lczv;->getRawType()Ljava/lang/Class;

    move-result-object p3

    goto/16 :goto_1

    :cond_5
    move-object v1, v9

    .line 129
    goto/16 :goto_0
.end method

.method private a(Ljava/lang/reflect/Field;Z)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 56
    iget-object v0, p0, Lcyd;->c:Lcwz;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcwz;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v4, p0, Lcyd;->c:Lcwz;

    iget v0, v4, Lcwz;->c:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_8

    move v0, v2

    :goto_1
    return v0

    :cond_0
    iget-wide v0, v4, Lcwz;->b:D

    const-wide/high16 v6, -0x4010

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_1

    const-class v0, Lcwk;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcwk;

    const-class v1, Lcwl;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcwl;

    invoke-virtual {v4, v0, v1}, Lcwz;->a(Lcwk;Lcwl;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, v4, Lcwz;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcwz;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcwz;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_6

    iget-object v0, v4, Lcwz;->e:Ljava/util/List;

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lau;

    invoke-direct {v1, p1}, Lau;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    invoke-interface {v0}, Ldd;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, v4, Lcwz;->f:Ljava/util/List;

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcvo;Lczv;)Lcwh;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcvo;",
            "Lczv",
            "<TT;>;)",
            "Lcwh",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p2}, Lczv;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 67
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcyd;->a:Lcwm;

    invoke-virtual {v0, p2}, Lcwm;->a(Lczv;)Lcxj;

    move-result-object v2

    .line 72
    new-instance v0, Lcyf;

    invoke-direct {p0, p1, p2, v1}, Lcyd;->a(Lcvo;Lczv;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcyf;-><init>(Lcxj;Ljava/util/Map;B)V

    goto :goto_0
.end method
