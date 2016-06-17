.class public final enum Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;
.super Ljava/lang/Enum;
.source "ReceiverMonitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

.field public static final enum MOUNTED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

.field public static final enum UNMOUNTED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;


# instance fields
.field private final state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

    const-string v1, "MOUNTED"

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;->MOUNTED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

    .line 87
    new-instance v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

    const-string v1, "UNMOUNTED"

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;->UNMOUNTED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

    sget-object v1, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;->MOUNTED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;->UNMOUNTED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;->$VALUES:[Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;->state:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;
    .locals 1
    .parameter

    .prologue
    .line 82
    const-class v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;->$VALUES:[Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

    return-object v0
.end method


# virtual methods
.method public final getMediaState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;->state:Ljava/lang/String;

    return-object v0
.end method
