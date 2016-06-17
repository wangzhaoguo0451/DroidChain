.class public final Labp;
.super Ljava/lang/Object;
.source "DefaultMesssageHandler.java"

# interfaces
.implements Lcom/alipay/test/ui/core/IMesssageHandle;


# static fields
.field private static a:Labp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Labp;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Labp;->a:Labp;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Labp;

    invoke-direct {v0}, Labp;-><init>()V

    sput-object v0, Labp;->a:Labp;

    .line 22
    :cond_0
    sget-object v0, Labp;->a:Labp;

    return-object v0
.end method


# virtual methods
.method public final varargs onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    return-void
.end method
