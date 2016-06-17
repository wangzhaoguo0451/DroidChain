.class public final Lcxy;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lcwi;


# instance fields
.field final a:Z

.field private final b:Lcwm;


# direct methods
.method public constructor <init>(Lcwm;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcxy;->b:Lcwm;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcxy;->a:Z

    .line 113
    return-void
.end method


# virtual methods
.method public final a(Lcvo;Lczv;)Lcwh;
    .locals 8
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
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p2}, Lczv;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Lczv;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 119
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-static {v0}, Lcom/wandoujia/gson/internal/$Gson$Types;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/wandoujia/gson/internal/$Gson$Types;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 125
    aget-object v0, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_2

    :cond_1
    sget-object v4, Lcym;->c:Lcwh;

    .line 126
    :goto_1
    aget-object v0, v1, v5

    invoke-static {v0}, Lczv;->get(Ljava/lang/reflect/Type;)Lczv;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcvo;->a(Lczv;)Lcwh;

    move-result-object v6

    .line 127
    iget-object v0, p0, Lcxy;->b:Lcwm;

    invoke-virtual {v0, p2}, Lcwm;->a(Lczv;)Lcxj;

    move-result-object v7

    .line 131
    new-instance v0, Lcxz;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcxz;-><init>(Lcxy;Lcvo;Ljava/lang/reflect/Type;Lcwh;Ljava/lang/reflect/Type;Lcwh;Lcxj;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {v0}, Lczv;->get(Ljava/lang/reflect/Type;)Lczv;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcvo;->a(Lczv;)Lcwh;

    move-result-object v4

    goto :goto_1
.end method
