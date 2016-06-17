.class public final enum Lcom/nispok/snackbar/Snackbar$SnackbarPosition;
.super Ljava/lang/Enum;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nispok/snackbar/Snackbar$SnackbarPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

.field public static final enum BOTTOM:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

.field public static final enum BOTTOM_CENTER:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

.field public static final enum TOP:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;


# instance fields
.field private layoutGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    const-string v1, "TOP"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v3, v2}, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->TOP:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    new-instance v0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    const-string v1, "BOTTOM"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v4, v2}, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->BOTTOM:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    new-instance v0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    const-string v1, "BOTTOM_CENTER"

    const/16 v2, 0x51

    invoke-direct {v0, v1, v5, v2}, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->BOTTOM_CENTER:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    sget-object v1, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->TOP:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->BOTTOM:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->BOTTOM_CENTER:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->$VALUES:[Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->layoutGravity:I

    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nispok/snackbar/Snackbar$SnackbarPosition;
    .locals 1
    .parameter

    .prologue
    .line 61
    const-class v0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    return-object v0
.end method

.method public static values()[Lcom/nispok/snackbar/Snackbar$SnackbarPosition;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->$VALUES:[Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    invoke-virtual {v0}, [Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    return-object v0
.end method


# virtual methods
.method public final getLayoutGravity()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->layoutGravity:I

    return v0
.end method
