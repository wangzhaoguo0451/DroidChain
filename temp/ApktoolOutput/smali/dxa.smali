.class public final Ldxa;
.super Ljava/lang/Object;
.source "Toast.java"


# static fields
.field public static final a:I

.field public static final b:I


# instance fields
.field private c:Lcom/nispok/snackbar/Snackbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->getDuration()I

    move-result v0

    sput v0, Ldxa;->a:I

    .line 25
    sget-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_SHORT:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->getDuration()I

    move-result v0

    sput v0, Ldxa;->b:I

    .line 26
    sget-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->getDuration()I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ldxa;
    .locals 3
    .parameter

    .prologue
    .line 118
    new-instance v0, Ldxa;

    invoke-direct {v0}, Ldxa;-><init>()V

    .line 119
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0e0107

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/Snackbar;->c(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    new-instance v2, Ldxe;

    invoke-direct {v2, p0}, Ldxe;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/nispok/snackbar/Snackbar;->f:Lbtk;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/nispok/snackbar/Snackbar;->h:Z

    const v2, 0x7f0e00f5

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/Snackbar;->a(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0a0186

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/Snackbar;->b(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    sget-object v2, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    iput-object v2, v1, Lcom/nispok/snackbar/Snackbar;->b:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    sget-object v2, Lcom/nispok/snackbar/enums/SnackbarType;->MULTI_LINE:Lcom/nispok/snackbar/enums/SnackbarType;

    iput-object v2, v1, Lcom/nispok/snackbar/Snackbar;->a:Lcom/nispok/snackbar/enums/SnackbarType;

    iput-object v1, v0, Ldxa;->c:Lcom/nispok/snackbar/Snackbar;

    .line 139
    return-object v0
.end method

.method public static a(Landroid/content/Context;IJ)Ldxa;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Ldxa;

    invoke-direct {v0}, Ldxa;-><init>()V

    .line 36
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nispok/snackbar/Snackbar;->a(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/nispok/snackbar/Snackbar;->a(J)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    iput-object v1, v0, Ldxa;->c:Lcom/nispok/snackbar/Snackbar;

    .line 37
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lbtk;Lbtk;)Ldxa;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Ldxa;

    invoke-direct {v0}, Ldxa;-><init>()V

    .line 78
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0e0385

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/Snackbar;->c(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    new-instance v2, Ldxc;

    invoke-direct {v2, p1}, Ldxc;-><init>(Lbtk;)V

    iput-object v2, v1, Lcom/nispok/snackbar/Snackbar;->f:Lbtk;

    invoke-virtual {v1}, Lcom/nispok/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0370

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nispok/snackbar/Snackbar;->c:Ljava/lang/CharSequence;

    new-instance v2, Ldxb;

    invoke-direct {v2, p2}, Ldxb;-><init>(Lbtk;)V

    iput-object v2, v1, Lcom/nispok/snackbar/Snackbar;->g:Lbtk;

    const v2, 0x7f0e05c6

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/Snackbar;->a(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0a00bc

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/Snackbar;->b(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    sget-object v2, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    iput-object v2, v1, Lcom/nispok/snackbar/Snackbar;->b:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    iput-object v1, v0, Ldxa;->c:Lcom/nispok/snackbar/Snackbar;

    .line 97
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lbtk;Ljava/lang/String;)Ldxa;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v0, Ldxa;

    invoke-direct {v0}, Ldxa;-><init>()V

    .line 103
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nispok/snackbar/Snackbar;->a()Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    new-instance v2, Ldxd;

    invoke-direct {v2, p1}, Ldxd;-><init>(Lbtk;)V

    iput-object v2, v1, Lcom/nispok/snackbar/Snackbar;->f:Lbtk;

    invoke-virtual {v1, p2}, Lcom/nispok/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0a0186

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/Snackbar;->b(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    sget-object v2, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    iput-object v2, v1, Lcom/nispok/snackbar/Snackbar;->b:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    iput-object v1, v0, Ldxa;->c:Lcom/nispok/snackbar/Snackbar;

    .line 114
    return-object v0
.end method

.method public static a(Landroid/content/Context;Leqw;Ljava/lang/Exception;)Ldxa;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    instance-of v0, p2, Lcom/android/volley/NoConnectionError;

    if-eqz v0, :cond_0

    .line 145
    const v0, 0x7f0e0451

    .line 154
    :goto_0
    new-instance v1, Ldxa;

    invoke-direct {v1}, Ldxa;-><init>()V

    .line 155
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nispok/snackbar/Snackbar;->a()Lcom/nispok/snackbar/Snackbar;

    move-result-object v2

    new-instance v3, Ldxf;

    invoke-direct {v3, p1}, Ldxf;-><init>(Leqw;)V

    iput-object v3, v2, Lcom/nispok/snackbar/Snackbar;->f:Lbtk;

    invoke-virtual {v2, v0}, Lcom/nispok/snackbar/Snackbar;->a(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    const v2, 0x7f0a0186

    invoke-virtual {v0, v2}, Lcom/nispok/snackbar/Snackbar;->b(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    sget-object v2, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    iput-object v2, v0, Lcom/nispok/snackbar/Snackbar;->b:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    iput-object v0, v1, Ldxa;->c:Lcom/nispok/snackbar/Snackbar;

    .line 167
    return-object v1

    .line 146
    :cond_0
    instance-of v0, p2, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_1

    .line 147
    const v0, 0x7f0e0535

    goto :goto_0

    .line 148
    :cond_1
    instance-of v0, p2, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_2

    .line 149
    const v0, 0x7f0e0450

    goto :goto_0

    .line 151
    :cond_2
    const v0, 0x7f0e0452

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;J)Ldxa;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v0, Ldxa;

    invoke-direct {v0}, Ldxa;-><init>()V

    .line 42
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nispok/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/nispok/snackbar/Snackbar;->a(J)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    iput-object v1, v0, Ldxa;->c:Lcom/nispok/snackbar/Snackbar;

    .line 43
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Exception;J)Ldxa;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    instance-of v0, p1, Lcom/android/volley/NoConnectionError;

    if-eqz v0, :cond_0

    .line 177
    const v0, 0x7f0e0451

    .line 186
    :goto_0
    new-instance v1, Ldxa;

    invoke-direct {v1}, Ldxa;-><init>()V

    .line 187
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nispok/snackbar/Snackbar;->a(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    const v2, 0x7f0a0186

    invoke-virtual {v0, v2}, Lcom/nispok/snackbar/Snackbar;->b(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/nispok/snackbar/Snackbar;->a(J)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    iput-object v0, v1, Ldxa;->c:Lcom/nispok/snackbar/Snackbar;

    .line 190
    return-object v1

    .line 178
    :cond_0
    instance-of v0, p1, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_1

    .line 179
    const v0, 0x7f0e0535

    goto :goto_0

    .line 180
    :cond_1
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_2

    .line 181
    const v0, 0x7f0e0450

    goto :goto_0

    .line 183
    :cond_2
    const v0, 0x7f0e0452

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    new-instance v0, Ldxa;

    invoke-direct {v0}, Ldxa;-><init>()V

    .line 48
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nispok/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/nispok/snackbar/Snackbar;->a(J)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    iput-object v1, v0, Ldxa;->c:Lcom/nispok/snackbar/Snackbar;

    .line 49
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Ldxa;->c:Lcom/nispok/snackbar/Snackbar;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Ldxa;->c:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lbth;->a(Lcom/nispok/snackbar/Snackbar;)V

    .line 201
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Ldxa;->c:Lcom/nispok/snackbar/Snackbar;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Ldxa;->c:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->b()V

    .line 207
    :cond_0
    return-void
.end method
