.class final Ldsm;
.super Landroid/os/Handler;
.source "SearchHintHelper.java"


# instance fields
.field private synthetic a:[Ljava/lang/String;

.field private synthetic b:Z

.field private synthetic c:Ldsk;


# direct methods
.method constructor <init>(Ldsk;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Ldsm;->c:Ldsk;

    iput-object p2, p0, Ldsm;->a:[Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldsm;->b:Z

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 138
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Ldsm;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldsm;->c:Ldsk;

    iget v0, v0, Ldsk;->a:I

    iget-object v1, p0, Ldsm;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Ldsm;->c:Ldsk;

    iget-object v1, p0, Ldsm;->a:[Ljava/lang/String;

    iget-object v2, p0, Ldsm;->c:Ldsk;

    iget v2, v2, Ldsk;->a:I

    aget-object v1, v1, v2

    iget-boolean v2, p0, Ldsm;->b:Z

    invoke-virtual {v0, v1, v2}, Ldsk;->a(Ljava/lang/String;Z)V

    .line 131
    iget-object v0, p0, Ldsm;->c:Ldsk;

    iget v1, v0, Ldsk;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ldsk;->a:I

    .line 132
    iget-object v0, p0, Ldsm;->c:Ldsk;

    iget-object v1, p0, Ldsm;->c:Ldsk;

    iget v1, v1, Ldsk;->a:I

    iget-object v2, p0, Ldsm;->a:[Ljava/lang/String;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, v0, Ldsk;->a:I

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
