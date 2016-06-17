.class public final Lcbt;
.super Lcbm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcbm;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcbm;-><init>()V

    invoke-super {p0, p1}, Lcbm;->a(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcbm;->a(Landroid/os/Bundle;)V

    return-void
.end method
