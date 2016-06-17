.class public abstract Lbvv;
.super Ljava/lang/Object;
.source "CustomRedirectHandler.java"

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# instance fields
.field public a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lbvv;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomRedirectHandler getLocationURI getRedirectUrl : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbvv;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v0, p0, Lbvv;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lbvv;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 46
    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    .line 47
    const/16 v1, 0x12e

    if-ne v0, v1, :cond_1

    .line 48
    :cond_0
    const-string v0, "Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbvv;->c:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lbvv;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lbvv;->b:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_2

    .line 50
    iget v0, p0, Lbvv;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbvv;->b:I

    .line 52
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    .line 54
    :cond_1
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 55
    iget-object v0, p0, Lbvv;->c:Ljava/lang/String;

    iput-object v0, p0, Lbvv;->a:Ljava/lang/String;

    .line 56
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
