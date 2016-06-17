.class public final Lcxs;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcwi;


# instance fields
.field private final a:Lcwm;


# direct methods
.method public constructor <init>(Lcwm;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcxs;->a:Lcwm;

    .line 41
    return-void
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
    .line 44
    invoke-virtual {p2}, Lczv;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 46
    invoke-virtual {p2}, Lczv;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 47
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {v0, v1}, Lcom/wandoujia/gson/internal/$Gson$Types;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lczv;->get(Ljava/lang/reflect/Type;)Lczv;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcvo;->a(Lczv;)Lcwh;

    move-result-object v2

    .line 53
    iget-object v0, p0, Lcxs;->a:Lcwm;

    invoke-virtual {v0, p2}, Lcwm;->a(Lczv;)Lcxj;

    move-result-object v3

    .line 56
    new-instance v0, Lcxt;

    invoke-direct {v0, p1, v1, v2, v3}, Lcxt;-><init>(Lcvo;Ljava/lang/reflect/Type;Lcwh;Lcxj;)V

    goto :goto_0
.end method
