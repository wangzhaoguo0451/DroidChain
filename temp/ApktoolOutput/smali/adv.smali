.class public final Ladv;
.super Ladu;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/wandoujia/ra;->o:Lcom/alipay/wandoujia/ra;

    invoke-direct {p0, v0}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    .line 21
    iput-object p1, p0, Ladv;->b:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Ladv;->b:Ljava/lang/String;

    return-object v0
.end method
