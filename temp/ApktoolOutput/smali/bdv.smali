.class final Lbdv;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lbat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lbat;

    const/4 v1, 0x0

    new-instance v2, Lbdw;

    const-string v3, "0\u0082\u0003\u00c30\u0082\u0002\u00ab\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00b35u1\u009b}%\u00f20"

    invoke-static {v3}, Lbat;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lbdw;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lbdx;

    const-string v3, "0\u0082\u0003\u00c30\u0082\u0002\u00ab\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00dc\u00d5\u0090\u00d8h\u000cz\u00a50"

    invoke-static {v3}, Lbat;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lbdx;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lbdv;->a:[Lbat;

    return-void
.end method
