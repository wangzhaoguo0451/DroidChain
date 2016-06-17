.class public final enum Lcom/nispok/snackbar/Snackbar$SnackbarDuration;
.super Ljava/lang/Enum;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nispok/snackbar/Snackbar$SnackbarDuration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

.field public static final enum LENGTH_INDEFINITE:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

.field public static final enum LENGTH_LONG:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

.field public static final enum LENGTH_SHORT:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;


# instance fields
.field private duration:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    const-string v1, "LENGTH_SHORT"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v3, v2}, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_SHORT:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    new-instance v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    const-string v1, "LENGTH_LONG"

    const/16 v2, 0xdac

    invoke-direct {v0, v1, v4, v2}, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    new-instance v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    const-string v1, "LENGTH_INDEFINITE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    sget-object v1, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_SHORT:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->$VALUES:[Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->duration:I

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nispok/snackbar/Snackbar$SnackbarDuration;
    .locals 1
    .parameter

    .prologue
    .line 47
    const-class v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    return-object v0
.end method

.method public static values()[Lcom/nispok/snackbar/Snackbar$SnackbarDuration;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->$VALUES:[Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v0}, [Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    return-object v0
.end method


# virtual methods
.method public final getDuration()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->duration:I

    return v0
.end method
