.class public final Lcya;
.super Lcwh;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcwh",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcwi;


# instance fields
.field private final b:Lcvo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcyb;

    invoke-direct {v0}, Lcyb;-><init>()V

    sput-object v0, Lcya;->a:Lcwi;

    return-void
.end method

.method private constructor <init>(Lcvo;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcwh;-><init>()V

    .line 51
    iput-object p1, p0, Lcya;->b:Lcvo;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcvo;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcya;-><init>(Lcvo;)V

    return-void
.end method


# virtual methods
.method public final a(Lczw;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 55
    invoke-virtual {p1}, Lczw;->f()Lcom/wandoujia/gson/stream/JsonToken;

    move-result-object v0

    .line 56
    sget-object v1, Lcyc;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/gson/stream/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 58
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p1}, Lczw;->a()V

    .line 60
    :goto_0
    invoke-virtual {p1}, Lczw;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lcya;->a(Lczw;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lczw;->b()V

    .line 86
    :goto_1
    return-object v0

    .line 67
    :pswitch_1
    new-instance v0, Lcom/wandoujia/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/wandoujia/gson/internal/LinkedTreeMap;-><init>()V

    .line 68
    invoke-virtual {p1}, Lczw;->c()V

    .line 69
    :goto_2
    invoke-virtual {p1}, Lczw;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p1}, Lczw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcya;->a(Lczw;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {p1}, Lczw;->d()V

    goto :goto_1

    .line 76
    :pswitch_2
    invoke-virtual {p1}, Lczw;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 79
    :pswitch_3
    invoke-virtual {p1}, Lczw;->l()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 82
    :pswitch_4
    invoke-virtual {p1}, Lczw;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 85
    :pswitch_5
    invoke-virtual {p1}, Lczw;->k()V

    .line 86
    const/4 v0, 0x0

    goto :goto_1

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Lczy;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p1}, Lczy;->e()Lczy;

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcya;->b:Lcvo;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcvo;->a(Ljava/lang/Class;)Lcwh;

    move-result-object v0

    .line 101
    instance-of v1, v0, Lcya;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Lczy;->c()Lczy;

    .line 103
    invoke-virtual {p1}, Lczy;->d()Lczy;

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcwh;->a(Lczy;Ljava/lang/Object;)V

    goto :goto_0
.end method
