.class public Ladl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/wandoujia/ic;


# instance fields
.field a:Lacz;

.field b:Lada;

.field c:I

.field public d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lacz;Lada;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Ladl;->a:Lacz;

    .line 31
    iput-object p2, p0, Ladl;->b:Lada;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ladl;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Ladl;->c:I

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Ladl;->d:Lorg/json/JSONObject;

    .line 71
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Ladl;->a:Lacz;

    .line 79
    iput-object v0, p0, Ladl;->b:Lada;

    .line 80
    iput-object v0, p0, Ladl;->d:Lorg/json/JSONObject;

    .line 82
    return-void
.end method
