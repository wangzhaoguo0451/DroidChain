.class public final Lbty;
.super Ljava/lang/Object;
.source "RsDmRemoteSysService.java"


# static fields
.field public static b:Landroid/content/Context;

.field private static d:Lbty;


# instance fields
.field public a:Lcom/redstone/sdk/enabler/remote/IRsSystemService;

.field public c:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lbty;

    invoke-direct {v0}, Lbty;-><init>()V

    sput-object v0, Lbty;->d:Lbty;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lbty;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lbty;->a:Lcom/redstone/sdk/enabler/remote/IRsSystemService;

    .line 26
    new-instance v0, Lbtz;

    invoke-direct {v0, p0}, Lbtz;-><init>(Lbty;)V

    iput-object v0, p0, Lbty;->c:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static a()Lbty;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lbty;->d:Lbty;

    return-object v0
.end method

.method static synthetic a(Lbty;Lcom/redstone/sdk/enabler/remote/IRsSystemService;)Lcom/redstone/sdk/enabler/remote/IRsSystemService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lbty;->a:Lcom/redstone/sdk/enabler/remote/IRsSystemService;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    sput-object p0, Lbty;->b:Landroid/content/Context;

    .line 56
    return-void
.end method
